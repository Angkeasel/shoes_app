// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_birth")
  String? get dateOfBirth => throw _privateConstructorUsedError;
  List<ProfilePictureModel>? get profiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call({
    int? id,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? email,
    String? gender,
    String? bio,
    @JsonKey(name: "date_of_birth") String? dateOfBirth,
    final List<ProfilePictureModel>? profiles,
  });
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? dateOfBirth = freezed,
    Object? profiles = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profiles: freezed == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfilePictureModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProfileModelCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$_UserProfileModelCopyWith(
          _$_UserProfileModel value, $Res Function(_$_UserProfileModel) then) =
      __$$_UserProfileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? email,
      String? gender,
      String? bio,
      @JsonKey(name: "date_of_birth") String? dateOfBirth,
      List<ProfilePictureModel>? profiles});
}

/// @nodoc
class __$$_UserProfileModelCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$_UserProfileModel>
    implements _$$_UserProfileModelCopyWith<$Res> {
  __$$_UserProfileModelCopyWithImpl(
      _$_UserProfileModel _value, $Res Function(_$_UserProfileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? email = freezed,
    Object? gender = freezed,
    Object? bio = freezed,
    Object? dateOfBirth = freezed,
    Object? profiles = freezed,
  }) {
    return _then(_$_UserProfileModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profiles: freezed == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfilePictureModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileModel implements _UserProfileModel {
  _$_UserProfileModel(
      {this.id,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.email,
      this.gender,
      this.bio,
      @JsonKey(name: "date_of_birth") this.dateOfBirth,
      final List<ProfilePictureModel>? profiles})
      : _profiles = profiles;

  factory _$_UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? gender;
  @override
  final String? bio;
  @override
  @JsonKey(name: "date_of_birth")
  final String? dateOfBirth;
  final List<ProfilePictureModel>? _profiles;
  @override
  List<ProfilePictureModel>? get profiles {
    final value = _profiles;
    if (value == null) return null;
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserProfileModel(id: $id, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, email: $email, gender: $gender, bio: $bio, dateOfBirth: $dateOfBirth, profiles: $profiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(other._profiles, _profiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      phoneNumber,
      email,
      gender,
      bio,
      dateOfBirth,
      const DeepCollectionEquality().hash(_profiles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      __$$_UserProfileModelCopyWithImpl<_$_UserProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileModelToJson(
      this,
    );
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  factory _UserProfileModel(
      {final int? id,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      final String? email,
      final String? gender,
      final String? bio,
      @JsonKey(name: "date_of_birth") final String? dateOfBirth,
      final List<ProfilePictureModel>? profiles}) = _$_UserProfileModel;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$_UserProfileModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  String? get email;
  @override
  String? get gender;
  @override
  String? get bio;
  @override
  @JsonKey(name: "date_of_birth")
  String? get dateOfBirth;
  @override
  List<ProfilePictureModel>? get profiles;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileModelCopyWith<_$_UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
