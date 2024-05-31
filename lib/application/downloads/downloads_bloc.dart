import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/core/failures/main_failures.dart';
import 'package:project_tutorial2/domain/download/i_downloads_repo.dart';
import 'package:project_tutorial2/domain/download/models/downloads_model.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadRepo downloadRepo;
  DownloadsBloc(this.downloadRepo) : super(DownloadsState.initial()) {
    on<_GetDownlodImages>(
      (event, emit) async {
        if (state.downloadsList.isNotEmpty) {
          emit(state);
          return;
        }
        emit(
          state.copyWith(
            isLoading: true,
            downloadsListSuccessOrFailureOption: none(),
          ),
        );

        final Either<MainFailures, List<Downloads>> getDownloadList =
            await downloadRepo.getDownloadsImage();

        final _state = getDownloadList.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadsListSuccessOrFailureOption: Some(Left(failure)),
          ),
          (success) => state.copyWith(
            isLoading: false,
            downloadsList: success,
            downloadsListSuccessOrFailureOption: Some(Right(success)),
          ),
        );
        emit(_state);
      },
    );
  }
}
