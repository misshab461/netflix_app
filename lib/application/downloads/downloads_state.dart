part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required List<Downloads> downloadsList,
    required Option<Either<MainFailures, List<Downloads>>>
        downloadsListSuccessOrFailureOption,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
        isLoading: false,
        downloadsList: [],
        downloadsListSuccessOrFailureOption: None());
  }
}
