// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownlodImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownlodImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownlodImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownlodImages value) getDownlodImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownlodImages value)? getDownlodImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownlodImages value)? getDownlodImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDownlodImagesImplCopyWith<$Res> {
  factory _$$GetDownlodImagesImplCopyWith(_$GetDownlodImagesImpl value,
          $Res Function(_$GetDownlodImagesImpl) then) =
      __$$GetDownlodImagesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDownlodImagesImplCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$GetDownlodImagesImpl>
    implements _$$GetDownlodImagesImplCopyWith<$Res> {
  __$$GetDownlodImagesImplCopyWithImpl(_$GetDownlodImagesImpl _value,
      $Res Function(_$GetDownlodImagesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDownlodImagesImpl implements _GetDownlodImages {
  const _$GetDownlodImagesImpl();

  @override
  String toString() {
    return 'DownloadsEvent.getDownlodImages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDownlodImagesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownlodImages,
  }) {
    return getDownlodImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownlodImages,
  }) {
    return getDownlodImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownlodImages,
    required TResult orElse(),
  }) {
    if (getDownlodImages != null) {
      return getDownlodImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownlodImages value) getDownlodImages,
  }) {
    return getDownlodImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownlodImages value)? getDownlodImages,
  }) {
    return getDownlodImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownlodImages value)? getDownlodImages,
    required TResult orElse(),
  }) {
    if (getDownlodImages != null) {
      return getDownlodImages(this);
    }
    return orElse();
  }
}

abstract class _GetDownlodImages implements DownloadsEvent {
  const factory _GetDownlodImages() = _$GetDownlodImagesImpl;
}

/// @nodoc
mixin _$DownloadsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Downloads> get downloadsList => throw _privateConstructorUsedError;
  Option<Either<MainFailures, List<Downloads>>>
      get downloadsListSuccessOrFailureOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadsStateCopyWith<DownloadsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsStateCopyWith<$Res> {
  factory $DownloadsStateCopyWith(
          DownloadsState value, $Res Function(DownloadsState) then) =
      _$DownloadsStateCopyWithImpl<$Res, DownloadsState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloadsList,
      Option<Either<MainFailures, List<Downloads>>>
          downloadsListSuccessOrFailureOption});
}

/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res, $Val extends DownloadsState>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloadsList = null,
    Object? downloadsListSuccessOrFailureOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsList: null == downloadsList
          ? _value.downloadsList
          : downloadsList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsListSuccessOrFailureOption: null ==
              downloadsListSuccessOrFailureOption
          ? _value.downloadsListSuccessOrFailureOption
          : downloadsListSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadsStateImplCopyWith<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  factory _$$DownloadsStateImplCopyWith(_$DownloadsStateImpl value,
          $Res Function(_$DownloadsStateImpl) then) =
      __$$DownloadsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Downloads> downloadsList,
      Option<Either<MainFailures, List<Downloads>>>
          downloadsListSuccessOrFailureOption});
}

/// @nodoc
class __$$DownloadsStateImplCopyWithImpl<$Res>
    extends _$DownloadsStateCopyWithImpl<$Res, _$DownloadsStateImpl>
    implements _$$DownloadsStateImplCopyWith<$Res> {
  __$$DownloadsStateImplCopyWithImpl(
      _$DownloadsStateImpl _value, $Res Function(_$DownloadsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloadsList = null,
    Object? downloadsListSuccessOrFailureOption = null,
  }) {
    return _then(_$DownloadsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloadsList: null == downloadsList
          ? _value._downloadsList
          : downloadsList // ignore: cast_nullable_to_non_nullable
              as List<Downloads>,
      downloadsListSuccessOrFailureOption: null ==
              downloadsListSuccessOrFailureOption
          ? _value.downloadsListSuccessOrFailureOption
          : downloadsListSuccessOrFailureOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailures, List<Downloads>>>,
    ));
  }
}

/// @nodoc

class _$DownloadsStateImpl implements _DownloadsState {
  const _$DownloadsStateImpl(
      {required this.isLoading,
      required final List<Downloads> downloadsList,
      required this.downloadsListSuccessOrFailureOption})
      : _downloadsList = downloadsList;

  @override
  final bool isLoading;
  final List<Downloads> _downloadsList;
  @override
  List<Downloads> get downloadsList {
    if (_downloadsList is EqualUnmodifiableListView) return _downloadsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloadsList);
  }

  @override
  final Option<Either<MainFailures, List<Downloads>>>
      downloadsListSuccessOrFailureOption;

  @override
  String toString() {
    return 'DownloadsState(isLoading: $isLoading, downloadsList: $downloadsList, downloadsListSuccessOrFailureOption: $downloadsListSuccessOrFailureOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloadsList, _downloadsList) &&
            (identical(other.downloadsListSuccessOrFailureOption,
                    downloadsListSuccessOrFailureOption) ||
                other.downloadsListSuccessOrFailureOption ==
                    downloadsListSuccessOrFailureOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_downloadsList),
      downloadsListSuccessOrFailureOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      __$$DownloadsStateImplCopyWithImpl<_$DownloadsStateImpl>(
          this, _$identity);
}

abstract class _DownloadsState implements DownloadsState {
  const factory _DownloadsState(
      {required final bool isLoading,
      required final List<Downloads> downloadsList,
      required final Option<Either<MainFailures, List<Downloads>>>
          downloadsListSuccessOrFailureOption}) = _$DownloadsStateImpl;

  @override
  bool get isLoading;
  @override
  List<Downloads> get downloadsList;
  @override
  Option<Either<MainFailures, List<Downloads>>>
      get downloadsListSuccessOrFailureOption;
  @override
  @JsonKey(ignore: true)
  _$$DownloadsStateImplCopyWith<_$DownloadsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
