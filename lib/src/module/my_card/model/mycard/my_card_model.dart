import 'package:allpay/src/module/home/models/product_details/product_details_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_card_model.freezed.dart';
part 'my_card_model.g.dart';

@freezed
class MyCardModel with _$MyCardModel {
  factory MyCardModel({
    int? id,
    double? price,
    int? quantity,
    String? createdAt,
    Variants? variant,
    VariantSizes? product,
  }) = _MyCardModel;

  factory MyCardModel.fromJson(Map<String, dynamic> json) =>
      _$MyCardModelFromJson(json);
}
