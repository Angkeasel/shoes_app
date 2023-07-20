// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_gender_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGenderModel _$UserGenderModelFromJson(Map<String, dynamic> json) {
  return _UserGenderModel.fromJson(json);
}

/// @nodoc
mixin _$UserGenderModel {
  int? get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGenderModelCopyWith<UserGenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGenderModelCopyWith<$Res> {
  factory $UserGenderModelCopyWith(
          UserGenderModel value, $Res Function(UserGenderModel) then) =
      _$UserGenderModelCopyWithImpl<$Res, UserGenderModel>;
  @useResult
  $Res call({int? id, String? value});
}

/// @nodoc
class _$UserGenderModelCopyWithImpl<$Res, $Val extends UserGenderModel>
    implements $UserGenderModelCopyWith<$Res> {
  _$UserGenderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserGenderModelCopyWith<$Res>
    implements $UserGenderModelCopyWith<$Res> {
  factory _$$_UserGenderModelCopyWith(
          _$_UserGenderModel value, $Res Function(_$_UserGenderModel) then) =
      __$$_UserGenderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? value});
}

/// @nodoc
class __$$_UserGenderModelCopyWithImpl<$Res>
    extends _$UserGenderModelCopyWithImpl<$Res, _$_UserGenderModel>
    implements _$$_UserGenderModelCopyWith<$Res> {
  __$$_UserGenderModelCopyWithImpl(
      _$_UserGenderModel _value, $Res Function(_$_UserGenderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_UserGenderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGenderModel implements _UserGenderModel {
  _$_UserGenderModel({this.id, this.value});

  factory _$_UserGenderModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserGenderModelFromJson(json);

  @override
  final int? id;
  @override
  final String? value;

  @override
  String toString() {
    return 'UserGenderModel(id: $id, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserGenderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserGenderModelCopyWith<_$_UserGenderModel> get copyWith =>
      __$$_UserGenderModelCopyWithImpl<_$_UserGenderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGenderModelToJson(
      this,
    );
  }
}

abstract class _UserGenderModel implements UserGenderModel {
  factory _UserGenderModel({final int? id, final String? value}) =
      _$_UserGenderModel;

  factory _UserGenderModel.fromJson(Map<String, dynamic> json) =
      _$_UserGenderModel.fromJson;

  @override
  int? get id;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_UserGenderModelCopyWith<_$_UserGenderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
