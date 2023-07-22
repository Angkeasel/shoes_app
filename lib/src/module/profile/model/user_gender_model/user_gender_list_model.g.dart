// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_gender_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserGenderListModel _$$_UserGenderListModelFromJson(
        Map<String, dynamic> json) =>
    _$_UserGenderListModel(
      genderList: (json['genderList'] as List<dynamic>?)
          ?.map((e) => UserGenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserGenderListModelToJson(
        _$_UserGenderListModel instance) =>
    <String, dynamic>{
      'genderList': instance.genderList,
    };
