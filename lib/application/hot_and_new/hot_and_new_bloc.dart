import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/hot_and_new/hot_and_new_model/hot_and_new_model.dart';
import 'package:project_tutorial2/domain/hot_and_new/i_Hotandnew_repo.dart';

part 'hot_and_new_event.dart';
part 'hot_and_new_state.dart';
part 'hot_and_new_bloc.freezed.dart';

@injectable
class HotAndNewBloc extends Bloc<HotAndNewEvent, HotAndNewState> {
  final IHotAndNewRepo _iHotAndNewRepo;
  HotAndNewBloc(this._iHotAndNewRepo) : super(HotAndNewState.initial()) {
    on<OnTvPopularEvent>((event, emit) async {
      if (state.onTvPopularList.isNotEmpty) {
        emit(state);
        return;
      }
      final _getTvPopular = await _iHotAndNewRepo.getHotAndNewTvData();

      emit(
        const HotAndNewState(
          isError: false,
          isLoading: true,
          onMoviePopularList: [],
          onTvPopularList: [],
        ),
      );

      final _state = _getTvPopular.fold(
        (failure) {
          return const HotAndNewState(
            onTvPopularList: [],
            onMoviePopularList: [],
            isLoading: false,
            isError: true,
          );
        },
        (success) {
          return HotAndNewState(
            onTvPopularList: success.results,
            onMoviePopularList: state.onMoviePopularList,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(_state);
    });

    on<OnMoviePopularEvent>((event, emit) async {
      if (state.onMoviePopularList.isNotEmpty) {
        emit(state);
        return;
      }
      final _getMoviePopular = await _iHotAndNewRepo.getHotAndNewMovieData();

      final _state = _getMoviePopular.fold(
        (failure) {
          return const HotAndNewState(
            onTvPopularList: [],
            onMoviePopularList: [],
            isLoading: false,
            isError: true,
          );
        },
        (success) {
          return HotAndNewState(
            onTvPopularList: state.onTvPopularList,
            onMoviePopularList: success.results,
            isLoading: false,
            isError: false,
          );
        },
      );

      emit(_state);
    });
  }
}
