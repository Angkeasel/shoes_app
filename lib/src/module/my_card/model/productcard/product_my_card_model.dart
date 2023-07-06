import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_my_card_model.freezed.dart';
part 'product_my_card_model.g.dart';

@freezed
class ProMyCardModel with _$ProMyCardModel {
  factory ProMyCardModel({final int? id, final String? name}) = _ProMyCardModel;

  factory ProMyCardModel.fromJson(Map<String, dynamic> json) =>
      _$ProMyCardModelFromJson(json);
}
