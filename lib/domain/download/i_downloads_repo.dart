import 'package:dartz/dartz.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/download/models/downloads_model.dart';

abstract class IDownloadRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImage();
}
