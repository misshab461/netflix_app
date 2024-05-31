import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/core/api_end_points.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/download/i_downloads_repo.dart';
import 'package:project_tutorial2/domain/download/models/downloads_model.dart';

@LazySingleton(as: IDownloadRepo)
class DownloadRepositiry implements IDownloadRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImage() async {
    final Response response =
        await Dio(BaseOptions()).get(ApiEndPoints.download);

    try {
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();
        return Right(downloadList);
      } else {
        return const Left(MainFailures.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailure());
    }
  }
}
