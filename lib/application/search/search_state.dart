part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isError,
    required List<Downloads> idleList,
    required List<Search> searchResult,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
        isLoading: false,
        isError: false,
        idleList: [],
        searchResult: [],
      );
}
