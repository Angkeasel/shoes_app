// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AddressModels _$$_AddressModelsFromJson(Map<String, dynamic> json) =>
    _$_AddressModels(
      id: json['id'] as int?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      streetNo: json['street_no'] as String?,
      homeNo: json['home_no'] as String?,
      fullAddress: json['full_address'] as String?,
      isDefault: json['is_default'] as bool?,
      latitute: (json['latitute'] as num?)?.toDouble(),
      longtitute: (json['longtitute'] as num?)?.toDouble(),
      label: json['label'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$_AddressModelsToJson(_$_AddressModels instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'street_no': instance.streetNo,
      'home_no': instance.homeNo,
      'full_address': instance.fullAddress,
      'is_default': instance.isDefault,
      'latitute': instance.latitute,
      'longtitute': instance.longtitute,
      'label': instance.label,
      'createdAt': instance.createdAt,
    };
