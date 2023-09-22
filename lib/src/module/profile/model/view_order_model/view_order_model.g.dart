// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ViewOrderModel _$$_ViewOrderModelFromJson(Map<String, dynamic> json) =>
    _$_ViewOrderModel(
      id: json['id'] as int?,
      totalAmount: (json['total_amount'] as num?)?.toDouble(),
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deliveryaddress: json['deliveryaddress'] == null
          ? null
          : Deliveryaddress.fromJson(
              json['deliveryaddress'] as Map<String, dynamic>),
      orderitems: (json['orderitems'] as List<dynamic>?)
          ?.map((e) => Orderitems.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ViewOrderModelToJson(_$_ViewOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_amount': instance.totalAmount,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deliveryaddress': instance.deliveryaddress,
      'orderitems': instance.orderitems,
    };

_$_Deliveryaddress _$$_DeliveryaddressFromJson(Map<String, dynamic> json) =>
    _$_Deliveryaddress(
      id: json['id'] as int?,
      streetNo: json['street_no'] as String?,
      homeNo: json['home_no'] as String?,
      fullAddress: json['full_address'] as String?,
      latitute: json['latitute'] as num?,
      longtitute: json['longtitute'] as num?,
    );

Map<String, dynamic> _$$_DeliveryaddressToJson(_$_Deliveryaddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street_no': instance.streetNo,
      'home_no': instance.homeNo,
      'full_address': instance.fullAddress,
      'latitute': instance.latitute,
      'longtitute': instance.longtitute,
    };

_$_Orderitems _$$_OrderitemsFromJson(Map<String, dynamic> json) =>
    _$_Orderitems(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      variant: json['variant'] == null
          ? null
          : VariantModel.fromJson(json['variant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderitemsToJson(_$_Orderitems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'variant': instance.variant,
    };

_$_VariantModel _$$_VariantModelFromJson(Map<String, dynamic> json) =>
    _$_VariantModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      value: json['value'] as String?,
      productName: json['productName'] as String?,
      imageUrl: json['image_url'] as String?,
      productId: json['product_id'] as int?,
    );

Map<String, dynamic> _$$_VariantModelToJson(_$_VariantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'productName': instance.productName,
      'image_url': instance.imageUrl,
      'product_id': instance.productId,
    };
