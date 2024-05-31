// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:project_tutorial2/application/downloads/downloads_bloc.dart'
    as _i13;
import 'package:project_tutorial2/application/Home/home_bloc.dart' as _i12;
import 'package:project_tutorial2/application/hot_and_new/hot_and_new_bloc.dart'
    as _i14;
import 'package:project_tutorial2/application/search/search_bloc.dart' as _i11;
import 'package:project_tutorial2/domain/download/i_downloads_repo.dart' as _i7;
import 'package:project_tutorial2/domain/home/i_home__repo.dart' as _i9;
import 'package:project_tutorial2/domain/hot_and_new/i_Hotandnew_repo.dart'
    as _i3;
import 'package:project_tutorial2/domain/search/i_search_repo.dart' as _i5;
import 'package:project_tutorial2/infrastrecture/download/downloads.dart'
    as _i8;
import 'package:project_tutorial2/infrastrecture/home/home.dart' as _i10;
import 'package:project_tutorial2/infrastrecture/hot_and_new/hot_and_new.dart'
    as _i4;
import 'package:project_tutorial2/infrastrecture/search/search.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IHotAndNewRepo>(() => _i4.HotAndNewRepository());
    gh.lazySingleton<_i5.ISearchRepo>(() => _i6.ISearchRepository());
    gh.lazySingleton<_i7.IDownloadRepo>(() => _i8.DownloadRepositiry());
    gh.lazySingleton<_i9.IHomeRepo>(() => _i10.IHomeRepository());
    gh.factory<_i11.SearchBloc>(() => _i11.SearchBloc(
          gh<_i7.IDownloadRepo>(),
          gh<_i5.ISearchRepo>(),
        ));
    gh.factory<_i12.HomeBloc>(() => _i12.HomeBloc(
          gh<_i7.IDownloadRepo>(),
          gh<_i9.IHomeRepo>(),
          gh<_i3.IHotAndNewRepo>(),
        ));
    gh.factory<_i13.DownloadsBloc>(
        () => _i13.DownloadsBloc(gh<_i7.IDownloadRepo>()));
    gh.factory<_i14.HotAndNewBloc>(
        () => _i14.HotAndNewBloc(gh<_i3.IHotAndNewRepo>()));
    return this;
  }
}
