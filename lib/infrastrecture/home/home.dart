import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/core/api_end_points.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/home/home_model/home_model.dart';
import 'package:project_tutorial2/domain/home/i_home__repo.dart';

@LazySingleton(as: IHomeRepo)
class IHomeRepository implements IHomeRepo {
  @override
  Future<Either<MainFailures, HomeModel>> getTopRatedMovies() async {
    Response response = await Dio(BaseOptions()).get(ApiEndPoints.topRated);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, HomeModel>> getUpcomigMovies() async {
    Response response = await Dio(BaseOptions()).get(ApiEndPoints.upcoming);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }

  @override
  Future<Either<MainFailures, HomeModel>> getnowPlayingMovies() async {
    Response response = await Dio(BaseOptions()).get(ApiEndPoints.nowPlaying);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeModel.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
