import 'package:allpay/src/module/home/models/product/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'big_product_model.freezed.dart';
part 'big_product_model.g.dart';

@freezed
class BigProductModel with _$BigProductModel {
  factory BigProductModel(
      {final int? totalItems,
      final List<ProductModel>? data,
      final int? totalPages,
      final int? currentPage}) = _BigProductModel;

  factory BigProductModel.fromJson(Map<String, dynamic> json) =>
      _$BigProductModelFromJson(json);
}
