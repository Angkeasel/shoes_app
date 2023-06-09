import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {

  factory ProductModel({
    final int ?id,
    final String ? name,
    final String ? description,
    final double ? price,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'thumbnail_url')final String ? thumbnailUrl,
    final double? discount,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);
}