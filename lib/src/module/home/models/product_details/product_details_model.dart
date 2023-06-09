// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {

  factory ProductDetailsModel({
    final int ? id,
    final String ? name,
    final String ? description,
    final double? price,
    @JsonKey(name: 'thumbnail_url')final String ? thumbnailUrl,
    final double? discount,
    @JsonKey(name:'is_favorite' )final bool? isFavorite,
    final List<VariantsModel>? variants
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) => _$ProductDetailsModelFromJson(json);
}



@freezed
class VariantsModel with _$VariantsModel {

  factory VariantsModel({
      final int? id,
      final String ? name,
      @JsonKey(name: 'image_url')final String ? imageUrl,
      final double ? price,
      final int ? quantity,
      final List<String>? colors
  }) = _VariantsModel;

  factory VariantsModel.fromJson(Map<String, dynamic> json) => _$VariantsModelFromJson(json);
}

