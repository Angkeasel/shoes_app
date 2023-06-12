// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BigProductModel _$$_BigProductModelFromJson(Map<String, dynamic> json) =>
    _$_BigProductModel(
      totalItems: json['totalItems'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['totalPages'] as int?,
      currentPage: json['currentPage'] as int?,
    );

Map<String, dynamic> _$$_BigProductModelToJson(_$_BigProductModel instance) =>
    <String, dynamic>{
      'totalItems': instance.totalItems,
      'data': instance.data,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
    };
