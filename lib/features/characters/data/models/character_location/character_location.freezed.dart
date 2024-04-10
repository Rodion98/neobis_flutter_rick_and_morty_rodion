// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CharacterLocationModel _$CharacterLocationModelFromJson(
    Map<String, dynamic> json) {
  return _CharacterLocationModel.fromJson(json);
}

/// @nodoc
mixin _$CharacterLocationModel {
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharacterLocationModelCopyWith<CharacterLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterLocationModelCopyWith<$Res> {
  factory $CharacterLocationModelCopyWith(CharacterLocationModel value,
          $Res Function(CharacterLocationModel) then) =
      _$CharacterLocationModelCopyWithImpl<$Res, CharacterLocationModel>;
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class _$CharacterLocationModelCopyWithImpl<$Res,
        $Val extends CharacterLocationModel>
    implements $CharacterLocationModelCopyWith<$Res> {
  _$CharacterLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CharacterLocationModelImplCopyWith<$Res>
    implements $CharacterLocationModelCopyWith<$Res> {
  factory _$$CharacterLocationModelImplCopyWith(
          _$CharacterLocationModelImpl value,
          $Res Function(_$CharacterLocationModelImpl) then) =
      __$$CharacterLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? url});
}

/// @nodoc
class __$$CharacterLocationModelImplCopyWithImpl<$Res>
    extends _$CharacterLocationModelCopyWithImpl<$Res,
        _$CharacterLocationModelImpl>
    implements _$$CharacterLocationModelImplCopyWith<$Res> {
  __$$CharacterLocationModelImplCopyWithImpl(
      _$CharacterLocationModelImpl _value,
      $Res Function(_$CharacterLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
  }) {
    return _then(_$CharacterLocationModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CharacterLocationModelImpl implements _CharacterLocationModel {
  const _$CharacterLocationModelImpl({this.name, this.url});

  factory _$CharacterLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CharacterLocationModelImplFromJson(json);

  @override
  final String? name;
  @override
  final String? url;

  @override
  String toString() {
    return 'CharacterLocationModel(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharacterLocationModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharacterLocationModelImplCopyWith<_$CharacterLocationModelImpl>
      get copyWith => __$$CharacterLocationModelImplCopyWithImpl<
          _$CharacterLocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CharacterLocationModelImplToJson(
      this,
    );
  }
}

abstract class _CharacterLocationModel implements CharacterLocationModel {
  const factory _CharacterLocationModel(
      {final String? name, final String? url}) = _$CharacterLocationModelImpl;

  factory _CharacterLocationModel.fromJson(Map<String, dynamic> json) =
      _$CharacterLocationModelImpl.fromJson;

  @override
  String? get name;
  @override
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$CharacterLocationModelImplCopyWith<_$CharacterLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
