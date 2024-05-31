import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_tutorial2/domain/download/i_downloads_repo.dart';
import 'package:project_tutorial2/domain/download/models/downloads_model.dart';
import 'package:project_tutorial2/domain/home/home_model/home_model.dart';
import 'package:project_tutorial2/domain/home/i_home__repo.dart';
import 'package:project_tutorial2/domain/hot_and_new/hot_and_new_model/hot_and_new_model.dart';
import 'package:project_tutorial2/domain/hot_and_new/i_Hotandnew_repo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepo _homeRepo;
  final IDownloadRepo _downloadRepo;
  final IHotAndNewRepo _hotAndNewRepo;
  HomeBloc(
    this._downloadRepo,
    this._homeRepo,
    this._hotAndNewRepo,
  ) : super(HomeState.initial()) {
    on<GetHomeData>((event, emit) async {
      final toprated = await _homeRepo.getTopRatedMovies();
      final trending = await _downloadRepo.getDownloadsImage();
      final top10 = await _hotAndNewRepo.getHotAndNewTvData();
      final upcomig = await _homeRepo.getnowPlayingMovies();
      final nowplaying = await _homeRepo.getnowPlayingMovies();

      toprated.fold((fialure) {
        const HomeState(
            topRated: [],
            trending: [],
            top10Tv: [],
            upcoming: [],
            nowPlaying: [],
            isLoading: false,
            hasError: true);
      }, (success) {
        final _state1 = HomeState(
            topRated: success.results!,
            trending: state.trending,
            top10Tv: state.top10Tv,
            upcoming: state.upcoming,
            nowPlaying: state.nowPlaying,
            isLoading: false,
            hasError: false);
        emit(_state1);
      });
      trending.fold((fialure) {
        const HomeState(
            topRated: [],
            trending: [],
            top10Tv: [],
            upcoming: [],
            nowPlaying: [],
            isLoading: false,
            hasError: true);
      }, (success) {
        final _state2 = HomeState(
            topRated: state.topRated,
            trending: success,
            top10Tv: state.top10Tv,
            upcoming: state.upcoming,
            nowPlaying: state.nowPlaying,
            isLoading: false,
            hasError: false);
        emit(_state2);
      });
      top10.fold((fialure) {
        const HomeState(
            topRated: [],
            trending: [],
            top10Tv: [],
            upcoming: [],
            nowPlaying: [],
            isLoading: false,
            hasError: true);
      }, (success) {
        final _state3 = HomeState(
            topRated: state.topRated,
            trending: state.trending,
            top10Tv: success.results,
            upcoming: state.upcoming,
            nowPlaying: state.nowPlaying,
            isLoading: false,
            hasError: false);
        emit(_state3);
      });
      upcomig.fold((fialure) {
        const HomeState(
            topRated: [],
            trending: [],
            top10Tv: [],
            upcoming: [],
            nowPlaying: [],
            isLoading: false,
            hasError: true);
      }, (success) {
        final _state4 = HomeState(
            topRated: state.topRated,
            trending: state.trending,
            top10Tv: state.top10Tv,
            upcoming: success.results!,
            nowPlaying: state.nowPlaying,
            isLoading: false,
            hasError: false);
        emit(_state4);
      });
      nowplaying.fold((fialure) {
        const HomeState(
            topRated: [],
            trending: [],
            top10Tv: [],
            upcoming: [],
            nowPlaying: [],
            isLoading: false,
            hasError: true);
      }, (success) {
        final _state5 = HomeState(
            topRated: state.topRated,
            trending: state.trending,
            top10Tv: state.top10Tv,
            upcoming: state.upcoming,
            nowPlaying: success.results!,
            isLoading: false,
            hasError: false);
        emit(_state5);
      });
    });
  }
}
