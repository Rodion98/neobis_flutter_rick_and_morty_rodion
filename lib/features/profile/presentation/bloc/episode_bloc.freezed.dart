// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpisodeEvent {
  List<String>? get urls => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String>? urls) getEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String>? urls)? getEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? urls)? getEpisodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEpisodes value) getEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEpisodes value)? getEpisodes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EpisodeEventCopyWith<EpisodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeEventCopyWith<$Res> {
  factory $EpisodeEventCopyWith(
          EpisodeEvent value, $Res Function(EpisodeEvent) then) =
      _$EpisodeEventCopyWithImpl<$Res, EpisodeEvent>;
  @useResult
  $Res call({List<String>? urls});
}

/// @nodoc
class _$EpisodeEventCopyWithImpl<$Res, $Val extends EpisodeEvent>
    implements $EpisodeEventCopyWith<$Res> {
  _$EpisodeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = freezed,
  }) {
    return _then(_value.copyWith(
      urls: freezed == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEpisodesImplCopyWith<$Res>
    implements $EpisodeEventCopyWith<$Res> {
  factory _$$GetEpisodesImplCopyWith(
          _$GetEpisodesImpl value, $Res Function(_$GetEpisodesImpl) then) =
      __$$GetEpisodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? urls});
}

/// @nodoc
class __$$GetEpisodesImplCopyWithImpl<$Res>
    extends _$EpisodeEventCopyWithImpl<$Res, _$GetEpisodesImpl>
    implements _$$GetEpisodesImplCopyWith<$Res> {
  __$$GetEpisodesImplCopyWithImpl(
      _$GetEpisodesImpl _value, $Res Function(_$GetEpisodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urls = freezed,
  }) {
    return _then(_$GetEpisodesImpl(
      urls: freezed == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$GetEpisodesImpl implements _GetEpisodes {
  const _$GetEpisodesImpl({final List<String>? urls}) : _urls = urls;

  final List<String>? _urls;
  @override
  List<String>? get urls {
    final value = _urls;
    if (value == null) return null;
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EpisodeEvent.getEpisodes(urls: $urls)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetEpisodesImpl &&
            const DeepCollectionEquality().equals(other._urls, _urls));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_urls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEpisodesImplCopyWith<_$GetEpisodesImpl> get copyWith =>
      __$$GetEpisodesImplCopyWithImpl<_$GetEpisodesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String>? urls) getEpisodes,
  }) {
    return getEpisodes(urls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String>? urls)? getEpisodes,
  }) {
    return getEpisodes?.call(urls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String>? urls)? getEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes(urls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEpisodes value) getEpisodes,
  }) {
    return getEpisodes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEpisodes value)? getEpisodes,
  }) {
    return getEpisodes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEpisodes value)? getEpisodes,
    required TResult orElse(),
  }) {
    if (getEpisodes != null) {
      return getEpisodes(this);
    }
    return orElse();
  }
}

abstract class _GetEpisodes implements EpisodeEvent {
  const factory _GetEpisodes({final List<String>? urls}) = _$GetEpisodesImpl;

  @override
  List<String>? get urls;
  @override
  @JsonKey(ignore: true)
  _$$GetEpisodesImplCopyWith<_$GetEpisodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EpisodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EpisodeEntity> episode) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EpisodeEntity> episode)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EpisodeEntity> episode)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodeStateLoading value) loading,
    required TResult Function(_EpisodeStateSuccess value) success,
    required TResult Function(_EpisodeStateError value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodeStateLoading value)? loading,
    TResult? Function(_EpisodeStateSuccess value)? success,
    TResult? Function(_EpisodeStateError value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodeStateLoading value)? loading,
    TResult Function(_EpisodeStateSuccess value)? success,
    TResult Function(_EpisodeStateError value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeStateCopyWith<$Res> {
  factory $EpisodeStateCopyWith(
          EpisodeState value, $Res Function(EpisodeState) then) =
      _$EpisodeStateCopyWithImpl<$Res, EpisodeState>;
}

/// @nodoc
class _$EpisodeStateCopyWithImpl<$Res, $Val extends EpisodeState>
    implements $EpisodeStateCopyWith<$Res> {
  _$EpisodeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EpisodeStateLoadingImplCopyWith<$Res> {
  factory _$$EpisodeStateLoadingImplCopyWith(_$EpisodeStateLoadingImpl value,
          $Res Function(_$EpisodeStateLoadingImpl) then) =
      __$$EpisodeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeStateLoadingImplCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateLoadingImpl>
    implements _$$EpisodeStateLoadingImplCopyWith<$Res> {
  __$$EpisodeStateLoadingImplCopyWithImpl(_$EpisodeStateLoadingImpl _value,
      $Res Function(_$EpisodeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeStateLoadingImpl implements _EpisodeStateLoading {
  const _$EpisodeStateLoadingImpl();

  @override
  String toString() {
    return 'EpisodeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EpisodeEntity> episode) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EpisodeEntity> episode)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EpisodeEntity> episode)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodeStateLoading value) loading,
    required TResult Function(_EpisodeStateSuccess value) success,
    required TResult Function(_EpisodeStateError value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodeStateLoading value)? loading,
    TResult? Function(_EpisodeStateSuccess value)? success,
    TResult? Function(_EpisodeStateError value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodeStateLoading value)? loading,
    TResult Function(_EpisodeStateSuccess value)? success,
    TResult Function(_EpisodeStateError value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _EpisodeStateLoading implements EpisodeState {
  const factory _EpisodeStateLoading() = _$EpisodeStateLoadingImpl;
}

/// @nodoc
abstract class _$$EpisodeStateSuccessImplCopyWith<$Res> {
  factory _$$EpisodeStateSuccessImplCopyWith(_$EpisodeStateSuccessImpl value,
          $Res Function(_$EpisodeStateSuccessImpl) then) =
      __$$EpisodeStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<EpisodeEntity> episode});
}

/// @nodoc
class __$$EpisodeStateSuccessImplCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateSuccessImpl>
    implements _$$EpisodeStateSuccessImplCopyWith<$Res> {
  __$$EpisodeStateSuccessImplCopyWithImpl(_$EpisodeStateSuccessImpl _value,
      $Res Function(_$EpisodeStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episode = null,
  }) {
    return _then(_$EpisodeStateSuccessImpl(
      episode: null == episode
          ? _value._episode
          : episode // ignore: cast_nullable_to_non_nullable
              as List<EpisodeEntity>,
    ));
  }
}

/// @nodoc

class _$EpisodeStateSuccessImpl implements _EpisodeStateSuccess {
  const _$EpisodeStateSuccessImpl({required final List<EpisodeEntity> episode})
      : _episode = episode;

  final List<EpisodeEntity> _episode;
  @override
  List<EpisodeEntity> get episode {
    if (_episode is EqualUnmodifiableListView) return _episode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_episode);
  }

  @override
  String toString() {
    return 'EpisodeState.success(episode: $episode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._episode, _episode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_episode));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeStateSuccessImplCopyWith<_$EpisodeStateSuccessImpl> get copyWith =>
      __$$EpisodeStateSuccessImplCopyWithImpl<_$EpisodeStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EpisodeEntity> episode) success,
    required TResult Function() failure,
  }) {
    return success(episode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EpisodeEntity> episode)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(episode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EpisodeEntity> episode)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(episode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodeStateLoading value) loading,
    required TResult Function(_EpisodeStateSuccess value) success,
    required TResult Function(_EpisodeStateError value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodeStateLoading value)? loading,
    TResult? Function(_EpisodeStateSuccess value)? success,
    TResult? Function(_EpisodeStateError value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodeStateLoading value)? loading,
    TResult Function(_EpisodeStateSuccess value)? success,
    TResult Function(_EpisodeStateError value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _EpisodeStateSuccess implements EpisodeState {
  const factory _EpisodeStateSuccess(
      {required final List<EpisodeEntity> episode}) = _$EpisodeStateSuccessImpl;

  List<EpisodeEntity> get episode;
  @JsonKey(ignore: true)
  _$$EpisodeStateSuccessImplCopyWith<_$EpisodeStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EpisodeStateErrorImplCopyWith<$Res> {
  factory _$$EpisodeStateErrorImplCopyWith(_$EpisodeStateErrorImpl value,
          $Res Function(_$EpisodeStateErrorImpl) then) =
      __$$EpisodeStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EpisodeStateErrorImplCopyWithImpl<$Res>
    extends _$EpisodeStateCopyWithImpl<$Res, _$EpisodeStateErrorImpl>
    implements _$$EpisodeStateErrorImplCopyWith<$Res> {
  __$$EpisodeStateErrorImplCopyWithImpl(_$EpisodeStateErrorImpl _value,
      $Res Function(_$EpisodeStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EpisodeStateErrorImpl implements _EpisodeStateError {
  const _$EpisodeStateErrorImpl();

  @override
  String toString() {
    return 'EpisodeState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EpisodeStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<EpisodeEntity> episode) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<EpisodeEntity> episode)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<EpisodeEntity> episode)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EpisodeStateLoading value) loading,
    required TResult Function(_EpisodeStateSuccess value) success,
    required TResult Function(_EpisodeStateError value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EpisodeStateLoading value)? loading,
    TResult? Function(_EpisodeStateSuccess value)? success,
    TResult? Function(_EpisodeStateError value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EpisodeStateLoading value)? loading,
    TResult Function(_EpisodeStateSuccess value)? success,
    TResult Function(_EpisodeStateError value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _EpisodeStateError implements EpisodeState {
  const factory _EpisodeStateError() = _$EpisodeStateErrorImpl;
}
