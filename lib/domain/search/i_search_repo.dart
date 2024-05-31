import 'package:dartz/dartz.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/search/model/search.dart';

abstract class ISearchRepo {
  Future<Either<MainFailures, List<Search>>> searchMovies(
      {required String movieQuery});
}
