import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/core/api_end_points.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/search/i_search_repo.dart';
import 'package:project_tutorial2/domain/search/model/search.dart';

@LazySingleton(as: ISearchRepo)
class ISearchRepository implements ISearchRepo {
  @override
  Future<Either<MainFailures, List<Search>>> searchMovies(
      {required String movieQuery}) async {
    final Response response =
        await Dio(BaseOptions()).get(ApiEndPoints.search + movieQuery);
    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = (response.data['results'] as List).map((e) {
          return Search.fromJson(e);
        }).toList();

        // log(response.data.toString());
        return Right(result);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailures.clientFailure());
    }
  }
}
