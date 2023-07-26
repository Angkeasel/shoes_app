import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_order_model.freezed.dart';
part 'view_order_model.g.dart';

@freezed
class ViewOrderModel with _$ViewOrderModel {
  factory ViewOrderModel({
    final int? id,
    @JsonKey(name: 'total_amount') final double? totalAmount,
    final String? status,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'updated_at') final String? updatedAt,
    @JsonKey(name: 'deliveryaddress') final Deliveryaddress? deliveryaddress,
    @JsonKey(name: 'orderitems') final List<Orderitems>? orderitems,
  }) = _ViewOrderModel;

  factory ViewOrderModel.fromJson(Map<String, dynamic> json) =>
      _$ViewOrderModelFromJson(json);
}

@freezed
class Deliveryaddress with _$Deliveryaddress {
  factory Deliveryaddress({
    final int? id,
    @JsonKey(name: 'street_no') final String? streetNo,
    @JsonKey(name: 'home_no') final String? homeNo,
    @JsonKey(name: 'full_address') final String? fullAddress,
    final double? latitute,
    final int? longtitute,
  }) = _Deliveryaddress;

  factory Deliveryaddress.fromJson(Map<String, dynamic> json) =>
      _$DeliveryaddressFromJson(json);
}

@freezed
class Orderitems with _$Orderitems {
  factory Orderitems({
    final int? id,
    final int? quantity,
    final int? price,
    final VariantModel? variant,
  }) = _Orderitems;

  factory Orderitems.fromJson(Map<String, dynamic> json) =>
      _$OrderitemsFromJson(json);
}

@freezed
class VariantModel with _$VariantModel {
  factory VariantModel({
    final int? id,
    final String? name,
    final String? value,
    @JsonKey(name: 'productName') final String? productName,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'product_id') final int? productId,
  }) = _VariantModel;

  factory VariantModel.fromJson(Map<String, dynamic> json) =>
      _$VariantModelFromJson(json);
}
