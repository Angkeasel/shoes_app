// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_picture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfilePictureModel _$$_ProfilePictureModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProfilePictureModel(
      id: json['id'] as int?,
      imageUrl: json['image_url'] as String?,
      isLatest: json['is_latest'] as bool?,
    );

Map<String, dynamic> _$$_ProfilePictureModelToJson(
        _$_ProfilePictureModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'is_latest': instance.isLatest,
    };
