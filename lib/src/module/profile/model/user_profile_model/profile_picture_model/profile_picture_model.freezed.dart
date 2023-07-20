// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_picture_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfilePictureModel _$ProfilePictureModelFromJson(Map<String, dynamic> json) {
  return _ProfilePictureModel.fromJson(json);
}

/// @nodoc
mixin _$ProfilePictureModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "is_latest")
  bool? get isLatest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfilePictureModelCopyWith<ProfilePictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePictureModelCopyWith<$Res> {
  factory $ProfilePictureModelCopyWith(
          ProfilePictureModel value, $Res Function(ProfilePictureModel) then) =
      _$ProfilePictureModelCopyWithImpl<$Res, ProfilePictureModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "is_latest") bool? isLatest});
}

/// @nodoc
class _$ProfilePictureModelCopyWithImpl<$Res, $Val extends ProfilePictureModel>
    implements $ProfilePictureModelCopyWith<$Res> {
  _$ProfilePictureModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? isLatest = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLatest: freezed == isLatest
          ? _value.isLatest
          : isLatest // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfilePictureModelCopyWith<$Res>
    implements $ProfilePictureModelCopyWith<$Res> {
  factory _$$_ProfilePictureModelCopyWith(_$_ProfilePictureModel value,
          $Res Function(_$_ProfilePictureModel) then) =
      __$$_ProfilePictureModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "image_url") String? imageUrl,
      @JsonKey(name: "is_latest") bool? isLatest});
}

/// @nodoc
class __$$_ProfilePictureModelCopyWithImpl<$Res>
    extends _$ProfilePictureModelCopyWithImpl<$Res, _$_ProfilePictureModel>
    implements _$$_ProfilePictureModelCopyWith<$Res> {
  __$$_ProfilePictureModelCopyWithImpl(_$_ProfilePictureModel _value,
      $Res Function(_$_ProfilePictureModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageUrl = freezed,
    Object? isLatest = freezed,
  }) {
    return _then(_$_ProfilePictureModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isLatest: freezed == isLatest
          ? _value.isLatest
          : isLatest // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfilePictureModel implements _ProfilePictureModel {
  _$_ProfilePictureModel(
      {this.id,
      @JsonKey(name: "image_url") this.imageUrl,
      @JsonKey(name: "is_latest") this.isLatest});

  factory _$_ProfilePictureModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProfilePictureModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  @JsonKey(name: "is_latest")
  final bool? isLatest;

  @override
  String toString() {
    return 'ProfilePictureModel(id: $id, imageUrl: $imageUrl, isLatest: $isLatest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfilePictureModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isLatest, isLatest) ||
                other.isLatest == isLatest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageUrl, isLatest);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfilePictureModelCopyWith<_$_ProfilePictureModel> get copyWith =>
      __$$_ProfilePictureModelCopyWithImpl<_$_ProfilePictureModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfilePictureModelToJson(
      this,
    );
  }
}

abstract class _ProfilePictureModel implements ProfilePictureModel {
  factory _ProfilePictureModel(
          {final int? id,
          @JsonKey(name: "image_url") final String? imageUrl,
          @JsonKey(name: "is_latest") final bool? isLatest}) =
      _$_ProfilePictureModel;

  factory _ProfilePictureModel.fromJson(Map<String, dynamic> json) =
      _$_ProfilePictureModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  @JsonKey(name: "is_latest")
  bool? get isLatest;
  @override
  @JsonKey(ignore: true)
  _$$_ProfilePictureModelCopyWith<_$_ProfilePictureModel> get copyWith =>
      throw _privateConstructorUsedError;
}
