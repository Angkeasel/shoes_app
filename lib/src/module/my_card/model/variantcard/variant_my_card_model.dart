// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'variant_my_card_model.freezed.dart';
part 'variant_my_card_model.g.dart';

@freezed
class VaiantMyCardModel with _$VaiantMyCardModel {
  factory VaiantMyCardModel(
      {int? id,
      String? name,
      @JsonKey(name: 'image_url') String? imageUrl,
      double? price,
      int? quantity,
      List<String>? colors}) = _VaiantMyCardModel;

  factory VaiantMyCardModel.fromJson(Map<String, dynamic> json) =>
      _$VaiantMyCardModelFromJson(json);
}
