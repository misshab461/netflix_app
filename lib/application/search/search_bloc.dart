import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/download/i_downloads_repo.dart';
import 'package:project_tutorial2/domain/search/i_search_repo.dart';

import '../../domain/download/models/downloads_model.dart';
import '../../domain/search/model/search.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadRepo _iDownloadRepo;
  final ISearchRepo _iSearchRepo;

  SearchBloc(
    this._iDownloadRepo,
    this._iSearchRepo,
  ) : super(SearchState.initial()) {
    on<_Initialized>(
      (event, emit) async {
        final result = await _iDownloadRepo.getDownloadsImage();
        emit(
          result.fold(
            (failure) {
              return state.copyWith(
                isLoading: false,
                isError: true,
                idleList: [],
                searchResult: [],
              );
            },
            (success) {
              return state.copyWith(
                isLoading: false,
                idleList: success,
                isError: false,
                searchResult: [],
              );
            },
          ),
        );
      },
    );

    on<_SearchMovie>(
      (event, emit) async {
        final _result =
            await _iSearchRepo.searchMovies(movieQuery: event.movieQuery);
        log(
          _result.toString(),
        );

        emit(
          state.copyWith(
            isLoading: true,
            isError: false,
            idleList: [],
            searchResult: [],
          ),
        );
        emit(
          _result.fold(
            (failure) {
              return state.copyWith(
                isError: true,
                isLoading: false,
                searchResult: [],
              );
            },
            (success) {
              return state.copyWith(
                isError: false,
                isLoading: false,
                searchResult: success,
                idleList: [],
              );
            },
          ),
        );
      },
    );
  }
}
