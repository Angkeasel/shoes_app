import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_invoice_model.freezed.dart';
part 'order_invoice_model.g.dart';

@freezed
class OrderInvoiceModel with _$OrderInvoiceModel {
  factory OrderInvoiceModel({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'total_amount') final int? totalAmount,
    @JsonKey(name: 'status') final String? status,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'deliveryaddress')
    final DeliveryAddressInvoice? deliveryaddress,
    @JsonKey(name: 'orderitems') final List<OrderitemsInvoice>? orderitems,
  }) = _OrderInvoiceModel;
  factory OrderInvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$OrderInvoiceModelFromJson(json);
}

@freezed
class DeliveryAddressInvoice with _$DeliveryAddressInvoice {
  factory DeliveryAddressInvoice({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'street_no') final String? streetNo,
    @JsonKey(name: 'home_no') final String? homeNo,
    @JsonKey(name: 'full_address') final String? fullAddress,
    @JsonKey(name: 'latitute') final double? latitute,
    @JsonKey(name: 'longtitute') final int? longtitute,
  }) = _DeliveryAddressInvoice;

  factory DeliveryAddressInvoice.fromJson(Map<String, dynamic> json) =>
      _$DeliveryAddressInvoiceFromJson(json);
}

@freezed
class VariantInvoice with _$VariantInvoice {
  factory VariantInvoice({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'value') final String? value,
    @JsonKey(name: 'product_name') final String? productName,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'product_id') final int? productId,
  }) = _$Variant;
  factory VariantInvoice.fromJson(Map<String, dynamic> json) =>
      _$VariantInvoiceFromJson(json);
}

@freezed
class SizeInvoice with _$SizeInvoice {
  factory SizeInvoice({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'size_text') final String? sizeText,
  }) = _$Size;
  factory SizeInvoice.fromJson(Map<String, dynamic> json) =>
      _$SizeInvoiceFromJson(json);
}

@freezed
class OrderitemsInvoice with _$OrderitemsInvoice {
  factory OrderitemsInvoice({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'quantity') final int? quantity,
    @JsonKey(name: 'price') final double? price,
    @JsonKey(name: 'total_price') final double? totalPrice,
    @JsonKey(name: 'variant') final VariantInvoice? variant,
    @JsonKey(name: 'size') final SizeInvoice? size,
  }) = _$Orderitems;
  factory OrderitemsInvoice.fromJson(Map<String, dynamic> json) =>
      _$OrderitemsInvoiceFromJson(json);
}
