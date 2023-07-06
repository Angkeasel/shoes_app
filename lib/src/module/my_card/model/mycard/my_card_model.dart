import 'package:allpay/src/module/my_card/model/productcard/product_my_card_model.dart';
import 'package:allpay/src/module/my_card/model/variantcard/variant_my_card_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_card_model.freezed.dart';
part 'my_card_model.g.dart';

@freezed
class MyCardModel with _$MyCardModel {
  factory MyCardModel(
      {int? id,
      double? price,
      int? quantity,
      String? createdAt,
      VaiantMyCardModel? variant,
      ProMyCardModel? product}) = _MyCardModel;

  factory MyCardModel.fromJson(Map<String, dynamic> json) =>
      _$MyCardModelFromJson(json);
}
