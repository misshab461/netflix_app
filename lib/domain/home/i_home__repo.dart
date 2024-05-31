import 'package:dartz/dartz.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/home/home_model/home_model.dart';

abstract class IHomeRepo {
  Future<Either<MainFailures, HomeModel>> getTopRatedMovies();
  Future<Either<MainFailures, HomeModel>> getUpcomigMovies();
  Future<Either<MainFailures, HomeModel>> getnowPlayingMovies();
}
