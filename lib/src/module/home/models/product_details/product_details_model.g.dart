// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailsModel _$$_ProductDetailsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      thumbnailUrl: json['thumbnail_url'] as String?,
      discount: (json['discount'] as num?)?.toDouble(),
      isFavorite: json['is_favorite'] as bool?,
      variants: (json['variants'] as List<dynamic>?)
          ?.map((e) => VariantsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProductDetailsModelToJson(
        _$_ProductDetailsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'thumbnail_url': instance.thumbnailUrl,
      'discount': instance.discount,
      'is_favorite': instance.isFavorite,
      'variants': instance.variants,
    };

_$_VariantsModel _$$_VariantsModelFromJson(Map<String, dynamic> json) =>
    _$_VariantsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      imageUrl: json['image_url'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_VariantsModelToJson(_$_VariantsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'price': instance.price,
      'quantity': instance.quantity,
      'colors': instance.colors,
    };
