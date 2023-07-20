// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      bio: json['bio'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      profiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) => ProfilePictureModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'email': instance.email,
      'gender': instance.gender,
      'bio': instance.bio,
      'date_of_birth': instance.dateOfBirth,
      'profiles': instance.profiles,
    };
