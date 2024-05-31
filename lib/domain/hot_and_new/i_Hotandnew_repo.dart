import 'package:dartz/dartz.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/hot_and_new/hot_and_new_model/hot_and_new_model.dart';

abstract class IHotAndNewRepo {
  Future<Either<MainFailures, HotAndNewModel>> getHotAndNewTvData();
  Future<Either<MainFailures, HotAndNewModel>> getHotAndNewMovieData();
}
