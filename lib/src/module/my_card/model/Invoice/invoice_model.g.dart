// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvoiceModel _$$_InvoiceModelFromJson(Map<String, dynamic> json) =>
    _$_InvoiceModel(
      id: json['id'] as int?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_InvoiceModelToJson(_$_InvoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_amount': instance.totalAmount,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
