// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyCardModel _$$_MyCardModelFromJson(Map<String, dynamic> json) =>
    _$_MyCardModel(
      id: json['id'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      createdAt: json['createdAt'] as String?,
      variant: json['variant'] == null
          ? null
          : Variants.fromJson(json['variant'] as Map<String, dynamic>),
      product: json['size'] == null
          ? null
          : VariantSizes.fromJson(json['size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MyCardModelToJson(_$_MyCardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'quantity': instance.quantity,
      'createdAt': instance.createdAt,
      'variant': instance.variant,
      'size': instance.product,
    };
