import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_details_model.freezed.dart';
part 'product_details_model.g.dart';

@freezed
class ProductDetailsModel with _$ProductDetailsModel {
  factory ProductDetailsModel({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'price') final double? price,
    @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
    @JsonKey(name: 'discount') final int? discount,
    @JsonKey(name: 'is_favorite') final bool? isFavorite,
    @JsonKey(name: 'variants') final List<Variants>? variants,
    @JsonKey(name: 'reviews') final List<Review>? reviews,
  }) = _ProductDetailsModel;

  factory ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsModelFromJson(json);
}

@freezed
class VariantSizes with _$VariantSizes {
  factory VariantSizes({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'size_text') final String? sizeText,
    @JsonKey(name: 'price') final double? price,
    @JsonKey(name: 'qty') final int? qty,
    @JsonKey(name: 'variant_id') final int? variantId,
  }) = _VariantSizes;

  factory VariantSizes.fromJson(Map<String, dynamic> json) =>
      _$VariantSizesFromJson(json);
}

@freezed
class Variants with _$Variants {
  factory Variants({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'name') final String? name,
    @JsonKey(name: 'value') final String? value,
    @JsonKey(name: 'product_name') final String? productName,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'sizes') final List<VariantSizes>? sizes,
  }) = _Variants;

  factory Variants.fromJson(Map<String, dynamic> json) =>
      _$VariantsFromJson(json);
}

@freezed
class Review with _$Review {
  factory Review({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'rating') final num? rating,
    @JsonKey(name: 'review_text') final String? reviewText,
    @JsonKey(name: 'user') final User? user,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
