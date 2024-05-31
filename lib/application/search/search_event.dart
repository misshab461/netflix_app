part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialized() = _Initialized;
  const factory SearchEvent.searchMovie({
    required String movieQuery,
  }) = _SearchMovie;
}
