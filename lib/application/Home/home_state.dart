part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<HomeModelData> topRated,
    required List<Downloads> trending,
    required List<HotAndNewData> top10Tv,
    required List<HomeModelData> upcoming,
    required List<HomeModelData> nowPlaying,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
      topRated: [],
      trending: [],
      top10Tv: [],
      upcoming: [],
      nowPlaying: [],
      isLoading: false,
      hasError: false);
}
