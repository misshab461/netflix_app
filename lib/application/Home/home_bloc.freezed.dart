// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeData value) getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeData value)? getHomeData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeData value)? getHomeData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetHomeDataImplCopyWith<$Res> {
  factory _$$GetHomeDataImplCopyWith(
          _$GetHomeDataImpl value, $Res Function(_$GetHomeDataImpl) then) =
      __$$GetHomeDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetHomeDataImpl>
    implements _$$GetHomeDataImplCopyWith<$Res> {
  __$$GetHomeDataImplCopyWithImpl(
      _$GetHomeDataImpl _value, $Res Function(_$GetHomeDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetHomeDataImpl implements GetHomeData {
  const _$GetHomeDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getHomeData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeData,
  }) {
    return getHomeData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getHomeData,
  }) {
    return getHomeData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeData,
    required TResult orElse(),
  }) {
    if (getHomeData != null) {
      return getHomeData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeData value) getHomeData,
  }) {
    return getHomeData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHomeData value)? getHomeData,
  }) {
    return getHomeData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeData value)? getHomeData,
    required TResult orElse(),
  }) {
    if (getHomeData != null) {
      return getHomeData(this);
    }
    return orElse();
  }
}

abstract class GetHomeData implements HomeEvent {
  const factory GetHomeData() = _$GetHomeDataImpl;
}

/// @nodoc
mixin _$HomeState {
  List<HomeModelData> get topRated => throw _privateConstructorUsedError;
  List<Downloads> get trending => throw _privateConstructorUsedError;
  List<HotAndNewData> get top10Tv => throw _privateConstructorUsedError;
  List<HomeModelData> get upcoming => throw _privateConstructorUsedError;
  List<HomeModelData> get nowPlaying => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<HomeModelData> topRated,
      List<Downloads> trending,
      List<HotAndNewData> top10Tv,
      List<HomeModelData> upcoming,
      List<HomeModelData> nowPlaying,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topRated = null,
    Object? trending = null,
    Object? top10Tv = null,
    Object? upcoming = null,
    Object? nowPlaying = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      topRated: null == topRated
          ? _value.topRated
          : topRated // ignore: cast_nullable_to_non_nullable
              as List<HomeModelData>,
      trending: null == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      top10Tv: null == top10Tv
          ? _value.top10Tv
          : top10Tv // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      upcoming: null == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<HomeModelData>,
      nowPlaying: null == nowPlaying
          ? _value.nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as List<HomeModelData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<HomeModelData> topRated,
      List<Downloads> trending,
      List<HotAndNewData> top10Tv,
      List<HomeModelData> upcoming,
      List<HomeModelData> nowPlaying,
      bool isLoading,
      bool hasError});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topRated = null,
    Object? trending = null,
    Object? top10Tv = null,
    Object? upcoming = null,
    Object? nowPlaying = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$InitialImpl(
      topRated: null == topRated
          ? _value._topRated
          : topRated // ignore: cast_nullable_to_non_nullable
              as List<HomeModelData>,
      trending: null == trending
          ? _value._trending
          : trending // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      top10Tv: null == top10Tv
          ? _value._top10Tv
          : top10Tv // ignore: cast_nullable_to_non_nullable
              as List<HotAndNewData>,
      upcoming: null == upcoming
          ? _value._upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<HomeModelData>,
      nowPlaying: null == nowPlaying
          ? _value._nowPlaying
          : nowPlaying // ignore: cast_nullable_to_non_nullable
              as List<HomeModelData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required final List<HomeModelData> topRated,
      required final List<Downloads> trending,
      required final List<HotAndNewData> top10Tv,
      required final List<HomeModelData> upcoming,
      required final List<HomeModelData> nowPlaying,
      required this.isLoading,
      required this.hasError})
      : _topRated = topRated,
        _trending = trending,
        _top10Tv = top10Tv,
        _upcoming = upcoming,
        _nowPlaying = nowPlaying;

  final List<HomeModelData> _topRated;
  @override
  List<HomeModelData> get topRated {
    if (_topRated is EqualUnmodifiableListView) return _topRated;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRated);
  }

  final List<Downloads> _trending;
  @override
  List<Downloads> get trending {
    if (_trending is EqualUnmodifiableListView) return _trending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trending);
  }

  final List<HotAndNewData> _top10Tv;
  @override
  List<HotAndNewData> get top10Tv {
    if (_top10Tv is EqualUnmodifiableListView) return _top10Tv;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_top10Tv);
  }

  final List<HomeModelData> _upcoming;
  @override
  List<HomeModelData> get upcoming {
    if (_upcoming is EqualUnmodifiableListView) return _upcoming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcoming);
  }

  final List<HomeModelData> _nowPlaying;
  @override
  List<HomeModelData> get nowPlaying {
    if (_nowPlaying is EqualUnmodifiableListView) return _nowPlaying;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlaying);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'HomeState(topRated: $topRated, trending: $trending, top10Tv: $top10Tv, upcoming: $upcoming, nowPlaying: $nowPlaying, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            const DeepCollectionEquality().equals(other._topRated, _topRated) &&
            const DeepCollectionEquality().equals(other._trending, _trending) &&
            const DeepCollectionEquality().equals(other._top10Tv, _top10Tv) &&
            const DeepCollectionEquality().equals(other._upcoming, _upcoming) &&
            const DeepCollectionEquality()
                .equals(other._nowPlaying, _nowPlaying) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_topRated),
      const DeepCollectionEquality().hash(_trending),
      const DeepCollectionEquality().hash(_top10Tv),
      const DeepCollectionEquality().hash(_upcoming),
      const DeepCollectionEquality().hash(_nowPlaying),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final List<HomeModelData> topRated,
      required final List<Downloads> trending,
      required final List<HotAndNewData> top10Tv,
      required final List<HomeModelData> upcoming,
      required final List<HomeModelData> nowPlaying,
      required final bool isLoading,
      required final bool hasError}) = _$InitialImpl;

  @override
  List<HomeModelData> get topRated;
  @override
  List<Downloads> get trending;
  @override
  List<HotAndNewData> get top10Tv;
  @override
  List<HomeModelData> get upcoming;
  @override
  List<HomeModelData> get nowPlaying;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
