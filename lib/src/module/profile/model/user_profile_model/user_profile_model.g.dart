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
      dateOfBirth: json['date_of_birth'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      profiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) => Profiles.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: json['gender'],
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone_number': instance.phoneNumber,
      'date_of_birth': instance.dateOfBirth,
      'email': instance.email,
      'bio': instance.bio,
      'profiles': instance.profiles,
      'gender': instance.gender,
    };

_$_Profiles _$$_ProfilesFromJson(Map<String, dynamic> json) => _$_Profiles(
      id: json['id'] as int?,
      imageUrl: json['image_url'] as String?,
      isLatest: json['is_latest'] as bool?,
    );

Map<String, dynamic> _$$_ProfilesToJson(_$_Profiles instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'is_latest': instance.isLatest,
    };
