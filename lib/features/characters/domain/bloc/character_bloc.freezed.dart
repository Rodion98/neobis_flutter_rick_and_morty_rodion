// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String? name) search,
    required TResult Function(String? name, String? status, String? gender)
        filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String? name)? search,
    TResult? Function(String? name, String? status, String? gender)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String? name)? search,
    TResult Function(String? name, String? status, String? gender)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getAll,
    required TResult Function(_GetSearchCharacters value) search,
    required TResult Function(_GetFilterCharacters value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getAll,
    TResult? Function(_GetSearchCharacters value)? search,
    TResult? Function(_GetFilterCharacters value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getAll,
    TResult Function(_GetSearchCharacters value)? search,
    TResult Function(_GetFilterCharacters value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCharactersImplCopyWith<$Res> {
  factory _$$GetCharactersImplCopyWith(
          _$GetCharactersImpl value, $Res Function(_$GetCharactersImpl) then) =
      __$$GetCharactersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$GetCharactersImpl>
    implements _$$GetCharactersImplCopyWith<$Res> {
  __$$GetCharactersImplCopyWithImpl(
      _$GetCharactersImpl _value, $Res Function(_$GetCharactersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCharactersImpl implements _GetCharacters {
  const _$GetCharactersImpl();

  @override
  String toString() {
    return 'CharacterEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCharactersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String? name) search,
    required TResult Function(String? name, String? status, String? gender)
        filter,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String? name)? search,
    TResult? Function(String? name, String? status, String? gender)? filter,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String? name)? search,
    TResult Function(String? name, String? status, String? gender)? filter,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getAll,
    required TResult Function(_GetSearchCharacters value) search,
    required TResult Function(_GetFilterCharacters value) filter,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getAll,
    TResult? Function(_GetSearchCharacters value)? search,
    TResult? Function(_GetFilterCharacters value)? filter,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getAll,
    TResult Function(_GetSearchCharacters value)? search,
    TResult Function(_GetFilterCharacters value)? filter,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetCharacters implements CharacterEvent {
  const factory _GetCharacters() = _$GetCharactersImpl;
}

/// @nodoc
abstract class _$$GetSearchCharactersImplCopyWith<$Res> {
  factory _$$GetSearchCharactersImplCopyWith(_$GetSearchCharactersImpl value,
          $Res Function(_$GetSearchCharactersImpl) then) =
      __$$GetSearchCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$GetSearchCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$GetSearchCharactersImpl>
    implements _$$GetSearchCharactersImplCopyWith<$Res> {
  __$$GetSearchCharactersImplCopyWithImpl(_$GetSearchCharactersImpl _value,
      $Res Function(_$GetSearchCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GetSearchCharactersImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetSearchCharactersImpl implements _GetSearchCharacters {
  const _$GetSearchCharactersImpl({this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'CharacterEvent.search(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchCharactersImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSearchCharactersImplCopyWith<_$GetSearchCharactersImpl> get copyWith =>
      __$$GetSearchCharactersImplCopyWithImpl<_$GetSearchCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String? name) search,
    required TResult Function(String? name, String? status, String? gender)
        filter,
  }) {
    return search(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String? name)? search,
    TResult? Function(String? name, String? status, String? gender)? filter,
  }) {
    return search?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String? name)? search,
    TResult Function(String? name, String? status, String? gender)? filter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getAll,
    required TResult Function(_GetSearchCharacters value) search,
    required TResult Function(_GetFilterCharacters value) filter,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getAll,
    TResult? Function(_GetSearchCharacters value)? search,
    TResult? Function(_GetFilterCharacters value)? filter,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getAll,
    TResult Function(_GetSearchCharacters value)? search,
    TResult Function(_GetFilterCharacters value)? filter,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _GetSearchCharacters implements CharacterEvent {
  const factory _GetSearchCharacters({final String? name}) =
      _$GetSearchCharactersImpl;

  String? get name;
  @JsonKey(ignore: true)
  _$$GetSearchCharactersImplCopyWith<_$GetSearchCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFilterCharactersImplCopyWith<$Res> {
  factory _$$GetFilterCharactersImplCopyWith(_$GetFilterCharactersImpl value,
          $Res Function(_$GetFilterCharactersImpl) then) =
      __$$GetFilterCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name, String? status, String? gender});
}

/// @nodoc
class __$$GetFilterCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$GetFilterCharactersImpl>
    implements _$$GetFilterCharactersImplCopyWith<$Res> {
  __$$GetFilterCharactersImplCopyWithImpl(_$GetFilterCharactersImpl _value,
      $Res Function(_$GetFilterCharactersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$GetFilterCharactersImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetFilterCharactersImpl implements _GetFilterCharacters {
  const _$GetFilterCharactersImpl({this.name, this.status, this.gender});

  @override
  final String? name;
  @override
  final String? status;
  @override
  final String? gender;

  @override
  String toString() {
    return 'CharacterEvent.filter(name: $name, status: $status, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFilterCharactersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, status, gender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFilterCharactersImplCopyWith<_$GetFilterCharactersImpl> get copyWith =>
      __$$GetFilterCharactersImplCopyWithImpl<_$GetFilterCharactersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function(String? name) search,
    required TResult Function(String? name, String? status, String? gender)
        filter,
  }) {
    return filter(name, status, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function(String? name)? search,
    TResult? Function(String? name, String? status, String? gender)? filter,
  }) {
    return filter?.call(name, status, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function(String? name)? search,
    TResult Function(String? name, String? status, String? gender)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(name, status, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCharacters value) getAll,
    required TResult Function(_GetSearchCharacters value) search,
    required TResult Function(_GetFilterCharacters value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCharacters value)? getAll,
    TResult? Function(_GetSearchCharacters value)? search,
    TResult? Function(_GetFilterCharacters value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCharacters value)? getAll,
    TResult Function(_GetSearchCharacters value)? search,
    TResult Function(_GetFilterCharacters value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _GetFilterCharacters implements CharacterEvent {
  const factory _GetFilterCharacters(
      {final String? name,
      final String? status,
      final String? gender}) = _$GetFilterCharactersImpl;

  String? get name;
  String? get status;
  String? get gender;
  @JsonKey(ignore: true)
  _$$GetFilterCharactersImplCopyWith<_$GetFilterCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CharacterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character character)? success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateSuccess value) success,
    required TResult Function(_CharacterStateError value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateSuccess value)? success,
    TResult? Function(_CharacterStateError value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateSuccess value)? success,
    TResult Function(_CharacterStateError value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CharacterStateLoadingImplCopyWith<$Res> {
  factory _$$CharacterStateLoadingImplCopyWith(
          _$CharacterStateLoadingImpl value,
          $Res Function(_$CharacterStateLoadingImpl) then) =
      __$$CharacterStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateLoadingImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateLoadingImpl>
    implements _$$CharacterStateLoadingImplCopyWith<$Res> {
  __$$CharacterStateLoadingImplCopyWithImpl(_$CharacterStateLoadingImpl _value,
      $Res Function(_$CharacterStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateLoadingImpl implements _CharacterStateLoading {
  const _$CharacterStateLoadingImpl();

  @override
  String toString() {
    return 'CharacterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character character)? success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? success,
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
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateSuccess value) success,
    required TResult Function(_CharacterStateError value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateSuccess value)? success,
    TResult? Function(_CharacterStateError value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateSuccess value)? success,
    TResult Function(_CharacterStateError value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CharacterStateLoading implements CharacterState {
  const factory _CharacterStateLoading() = _$CharacterStateLoadingImpl;
}

/// @nodoc
abstract class _$$CharacterStateSuccessImplCopyWith<$Res> {
  factory _$$CharacterStateSuccessImplCopyWith(
          _$CharacterStateSuccessImpl value,
          $Res Function(_$CharacterStateSuccessImpl) then) =
      __$$CharacterStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Character character});

  $CharacterCopyWith<$Res> get character;
}

/// @nodoc
class __$$CharacterStateSuccessImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateSuccessImpl>
    implements _$$CharacterStateSuccessImplCopyWith<$Res> {
  __$$CharacterStateSuccessImplCopyWithImpl(_$CharacterStateSuccessImpl _value,
      $Res Function(_$CharacterStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? character = null,
  }) {
    return _then(_$CharacterStateSuccessImpl(
      character: null == character
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as Character,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CharacterCopyWith<$Res> get character {
    return $CharacterCopyWith<$Res>(_value.character, (value) {
      return _then(_value.copyWith(character: value));
    });
  }
}

/// @nodoc

class _$CharacterStateSuccessImpl implements _CharacterStateSuccess {
  const _$CharacterStateSuccessImpl({required this.character});

  @override
  final Character character;

  @override
  String toString() {
    return 'CharacterState.success(character: $character)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateSuccessImpl &&
            (identical(other.character, character) ||
                other.character == character));
  }

  @override
  int get hashCode => Object.hash(runtimeType, character);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterStateSuccessImplCopyWith<_$CharacterStateSuccessImpl>
      get copyWith => __$$CharacterStateSuccessImplCopyWithImpl<
          _$CharacterStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) success,
    required TResult Function() failure,
  }) {
    return success(character);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character character)? success,
    TResult? Function()? failure,
  }) {
    return success?.call(character);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(character);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateSuccess value) success,
    required TResult Function(_CharacterStateError value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateSuccess value)? success,
    TResult? Function(_CharacterStateError value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateSuccess value)? success,
    TResult Function(_CharacterStateError value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CharacterStateSuccess implements CharacterState {
  const factory _CharacterStateSuccess({required final Character character}) =
      _$CharacterStateSuccessImpl;

  Character get character;
  @JsonKey(ignore: true)
  _$$CharacterStateSuccessImplCopyWith<_$CharacterStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CharacterStateErrorImplCopyWith<$Res> {
  factory _$$CharacterStateErrorImplCopyWith(_$CharacterStateErrorImpl value,
          $Res Function(_$CharacterStateErrorImpl) then) =
      __$$CharacterStateErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CharacterStateErrorImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$CharacterStateErrorImpl>
    implements _$$CharacterStateErrorImplCopyWith<$Res> {
  __$$CharacterStateErrorImplCopyWithImpl(_$CharacterStateErrorImpl _value,
      $Res Function(_$CharacterStateErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CharacterStateErrorImpl implements _CharacterStateError {
  const _$CharacterStateErrorImpl();

  @override
  String toString() {
    return 'CharacterState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterStateErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Character character) success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Character character)? success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Character character)? success,
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
    required TResult Function(_CharacterStateLoading value) loading,
    required TResult Function(_CharacterStateSuccess value) success,
    required TResult Function(_CharacterStateError value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharacterStateLoading value)? loading,
    TResult? Function(_CharacterStateSuccess value)? success,
    TResult? Function(_CharacterStateError value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharacterStateLoading value)? loading,
    TResult Function(_CharacterStateSuccess value)? success,
    TResult Function(_CharacterStateError value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CharacterStateError implements CharacterState {
  const factory _CharacterStateError() = _$CharacterStateErrorImpl;
}
