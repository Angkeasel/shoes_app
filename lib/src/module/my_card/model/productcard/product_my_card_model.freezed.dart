// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_my_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProMyCardModel _$ProMyCardModelFromJson(Map<String, dynamic> json) {
  return _ProMyCardModel.fromJson(json);
}

/// @nodoc
mixin _$ProMyCardModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProMyCardModelCopyWith<ProMyCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProMyCardModelCopyWith<$Res> {
  factory $ProMyCardModelCopyWith(
          ProMyCardModel value, $Res Function(ProMyCardModel) then) =
      _$ProMyCardModelCopyWithImpl<$Res, ProMyCardModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$ProMyCardModelCopyWithImpl<$Res, $Val extends ProMyCardModel>
    implements $ProMyCardModelCopyWith<$Res> {
  _$ProMyCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProMyCardModelCopyWith<$Res>
    implements $ProMyCardModelCopyWith<$Res> {
  factory _$$_ProMyCardModelCopyWith(
          _$_ProMyCardModel value, $Res Function(_$_ProMyCardModel) then) =
      __$$_ProMyCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$_ProMyCardModelCopyWithImpl<$Res>
    extends _$ProMyCardModelCopyWithImpl<$Res, _$_ProMyCardModel>
    implements _$$_ProMyCardModelCopyWith<$Res> {
  __$$_ProMyCardModelCopyWithImpl(
      _$_ProMyCardModel _value, $Res Function(_$_ProMyCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ProMyCardModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProMyCardModel implements _ProMyCardModel {
  _$_ProMyCardModel({this.id, this.name});

  factory _$_ProMyCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProMyCardModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProMyCardModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProMyCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProMyCardModelCopyWith<_$_ProMyCardModel> get copyWith =>
      __$$_ProMyCardModelCopyWithImpl<_$_ProMyCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProMyCardModelToJson(
      this,
    );
  }
}

abstract class _ProMyCardModel implements ProMyCardModel {
  factory _ProMyCardModel({final int? id, final String? name}) =
      _$_ProMyCardModel;

  factory _ProMyCardModel.fromJson(Map<String, dynamic> json) =
      _$_ProMyCardModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProMyCardModelCopyWith<_$_ProMyCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
