import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/core/api_end_points.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/hot_and_new/hot_and_new_model/hot_and_new_model.dart';
import 'package:project_tutorial2/domain/hot_and_new/i_Hotandnew_repo.dart';

@LazySingleton(as: IHotAndNewRepo)
class HotAndNewRepository implements IHotAndNewRepo {
  @override
  Future<Either<MainFailures, HotAndNewModel>> getHotAndNewTvData() async {
    Response response = await Dio(BaseOptions()).get(ApiEndPoints.tvPopular);
    try {
      if (response.statusCode == 200 || response.data == 201) {
        final result = HotAndNewModel.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, HotAndNewModel>> getHotAndNewMovieData() async {
    Response response = await Dio(BaseOptions()).get(ApiEndPoints.moviePopular);
    try {
      if (response.statusCode == 200 || response.data == 201) {
        final result = HotAndNewModel.fromJson(response.data);
        log('Movie popular =>');
        log(result.toString());
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
