// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_my_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaiantMyCardModel _$$_VaiantMyCardModelFromJson(Map<String, dynamic> json) =>
    _$_VaiantMyCardModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      imageUrl: json['image_url'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_VaiantMyCardModelToJson(
        _$_VaiantMyCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'quantity': instance.quantity,
      'colors': instance.colors,
    };
