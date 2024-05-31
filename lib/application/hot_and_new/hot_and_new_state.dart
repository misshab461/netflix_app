part of 'hot_and_new_bloc.dart';

@freezed
class HotAndNewState with _$HotAndNewState {
  const factory HotAndNewState({
    required final List<HotAndNewData> onTvPopularList,
    required final List<HotAndNewData> onMoviePopularList,
    required bool isLoading,
    required bool isError,
  }) = _HotAndNewState;

  factory HotAndNewState.initial() => const HotAndNewState(
        onTvPopularList: [],
        onMoviePopularList: [],
        isLoading: false,
        isError: false,
      );
}
