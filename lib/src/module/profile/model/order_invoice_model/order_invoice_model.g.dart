// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderInvoiceModel _$$_OrderInvoiceModelFromJson(Map<String, dynamic> json) =>
    _$_OrderInvoiceModel(
      id: json['id'] as int?,
      totalAmount: json['total_amount'] as int?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      deliveryaddress: json['deliveryaddress'] == null
          ? null
          : DeliveryAddressInvoice.fromJson(
              json['deliveryaddress'] as Map<String, dynamic>),
      orderitems: (json['orderitems'] as List<dynamic>?)
          ?.map((e) => OrderitemsInvoice.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderInvoiceModelToJson(
        _$_OrderInvoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'total_amount': instance.totalAmount,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deliveryaddress': instance.deliveryaddress,
      'orderitems': instance.orderitems,
    };

_$_DeliveryAddressInvoice _$$_DeliveryAddressInvoiceFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryAddressInvoice(
      id: json['id'] as int?,
      streetNo: json['street_no'] as String?,
      homeNo: json['home_no'] as String?,
      fullAddress: json['full_address'] as String?,
      latitute: (json['latitute'] as num?)?.toDouble(),
      longtitute: json['longtitute'] as int?,
    );

Map<String, dynamic> _$$_DeliveryAddressInvoiceToJson(
        _$_DeliveryAddressInvoice instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street_no': instance.streetNo,
      'home_no': instance.homeNo,
      'full_address': instance.fullAddress,
      'latitute': instance.latitute,
      'longtitute': instance.longtitute,
    };

_$_$Variant _$$_$VariantFromJson(Map<String, dynamic> json) => _$_$Variant(
      id: json['id'] as int?,
      name: json['name'] as String?,
      value: json['value'] as String?,
      productName: json['product_name'] as String?,
      imageUrl: json['image_url'] as String?,
      productId: json['product_id'] as int?,
    );

Map<String, dynamic> _$$_$VariantToJson(_$_$Variant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
      'product_name': instance.productName,
      'image_url': instance.imageUrl,
      'product_id': instance.productId,
    };

_$_$Size _$$_$SizeFromJson(Map<String, dynamic> json) => _$_$Size(
      id: json['id'] as int?,
      sizeText: json['size_text'] as String?,
    );

Map<String, dynamic> _$$_$SizeToJson(_$_$Size instance) => <String, dynamic>{
      'id': instance.id,
      'size_text': instance.sizeText,
    };

_$_$Orderitems _$$_$OrderitemsFromJson(Map<String, dynamic> json) =>
    _$_$Orderitems(
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      price: (json['price'] as num?)?.toDouble(),
      totalPrice: (json['total_price'] as num?)?.toDouble(),
      variant: json['variant'] == null
          ? null
          : VariantInvoice.fromJson(json['variant'] as Map<String, dynamic>),
      size: json['size'] == null
          ? null
          : SizeInvoice.fromJson(json['size'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_$OrderitemsToJson(_$_$Orderitems instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'price': instance.price,
      'total_price': instance.totalPrice,
      'variant': instance.variant,
      'size': instance.size,
    };
