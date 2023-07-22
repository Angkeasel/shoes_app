// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_gender_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGenderListModel _$UserGenderListModelFromJson(Map<String, dynamic> json) {
  return _UserGenderListModel.fromJson(json);
}

/// @nodoc
mixin _$UserGenderListModel {
  List<UserGenderModel>? get genderList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGenderListModelCopyWith<UserGenderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGenderListModelCopyWith<$Res> {
  factory $UserGenderListModelCopyWith(
          UserGenderListModel value, $Res Function(UserGenderListModel) then) =
      _$UserGenderListModelCopyWithImpl<$Res, UserGenderListModel>;
  @useResult
  $Res call({List<UserGenderModel>? genderList});
}

/// @nodoc
class _$UserGenderListModelCopyWithImpl<$Res, $Val extends UserGenderListModel>
    implements $UserGenderListModelCopyWith<$Res> {
  _$UserGenderListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderList = freezed,
  }) {
    return _then(_value.copyWith(
      genderList: freezed == genderList
          ? _value.genderList
          : genderList // ignore: cast_nullable_to_non_nullable
              as List<UserGenderModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserGenderListModelCopyWith<$Res>
    implements $UserGenderListModelCopyWith<$Res> {
  factory _$$_UserGenderListModelCopyWith(_$_UserGenderListModel value,
          $Res Function(_$_UserGenderListModel) then) =
      __$$_UserGenderListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserGenderModel>? genderList});
}

/// @nodoc
class __$$_UserGenderListModelCopyWithImpl<$Res>
    extends _$UserGenderListModelCopyWithImpl<$Res, _$_UserGenderListModel>
    implements _$$_UserGenderListModelCopyWith<$Res> {
  __$$_UserGenderListModelCopyWithImpl(_$_UserGenderListModel _value,
      $Res Function(_$_UserGenderListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderList = freezed,
  }) {
    return _then(_$_UserGenderListModel(
      genderList: freezed == genderList
          ? _value._genderList
          : genderList // ignore: cast_nullable_to_non_nullable
              as List<UserGenderModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGenderListModel implements _UserGenderListModel {
  _$_UserGenderListModel({final List<UserGenderModel>? genderList})
      : _genderList = genderList;

  factory _$_UserGenderListModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserGenderListModelFromJson(json);

  final List<UserGenderModel>? _genderList;
  @override
  List<UserGenderModel>? get genderList {
    final value = _genderList;
    if (value == null) return null;
    if (_genderList is EqualUnmodifiableListView) return _genderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserGenderListModel(genderList: $genderList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserGenderListModel &&
            const DeepCollectionEquality()
                .equals(other._genderList, _genderList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_genderList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserGenderListModelCopyWith<_$_UserGenderListModel> get copyWith =>
      __$$_UserGenderListModelCopyWithImpl<_$_UserGenderListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserGenderListModelToJson(
      this,
    );
  }
}

abstract class _UserGenderListModel implements UserGenderListModel {
  factory _UserGenderListModel({final List<UserGenderModel>? genderList}) =
      _$_UserGenderListModel;

  factory _UserGenderListModel.fromJson(Map<String, dynamic> json) =
      _$_UserGenderListModel.fromJson;

  @override
  List<UserGenderModel>? get genderList;
  @override
  @JsonKey(ignore: true)
  _$$_UserGenderListModelCopyWith<_$_UserGenderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
