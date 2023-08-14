// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDetailsModel _$ProductDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  int? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite => throw _privateConstructorUsedError;
  @JsonKey(name: 'variants')
  List<Variants>? get variants => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  List<Review>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsModelCopyWith<ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsModelCopyWith<$Res> {
  factory $ProductDetailsModelCopyWith(
          ProductDetailsModel value, $Res Function(ProductDetailsModel) then) =
      _$ProductDetailsModelCopyWithImpl<$Res, ProductDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      @JsonKey(name: 'variants') List<Variants>? variants,
      @JsonKey(name: 'reviews') List<Review>? reviews});
}

/// @nodoc
class _$ProductDetailsModelCopyWithImpl<$Res, $Val extends ProductDetailsModel>
    implements $ProductDetailsModelCopyWith<$Res> {
  _$ProductDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? thumbnailUrl = freezed,
    Object? discount = freezed,
    Object? isFavorite = freezed,
    Object? variants = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variants>?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailsModelCopyWith<$Res>
    implements $ProductDetailsModelCopyWith<$Res> {
  factory _$$_ProductDetailsModelCopyWith(_$_ProductDetailsModel value,
          $Res Function(_$_ProductDetailsModel) then) =
      __$$_ProductDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      @JsonKey(name: 'discount') int? discount,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      @JsonKey(name: 'variants') List<Variants>? variants,
      @JsonKey(name: 'reviews') List<Review>? reviews});
}

/// @nodoc
class __$$_ProductDetailsModelCopyWithImpl<$Res>
    extends _$ProductDetailsModelCopyWithImpl<$Res, _$_ProductDetailsModel>
    implements _$$_ProductDetailsModelCopyWith<$Res> {
  __$$_ProductDetailsModelCopyWithImpl(_$_ProductDetailsModel _value,
      $Res Function(_$_ProductDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? thumbnailUrl = freezed,
    Object? discount = freezed,
    Object? isFavorite = freezed,
    Object? variants = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$_ProductDetailsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variants>?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsModel implements _ProductDetailsModel {
  _$_ProductDetailsModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      @JsonKey(name: 'discount') this.discount,
      @JsonKey(name: 'is_favorite') this.isFavorite,
      @JsonKey(name: 'variants') final List<Variants>? variants,
      @JsonKey(name: 'reviews') final List<Review>? reviews})
      : _variants = variants,
        _reviews = reviews;

  factory _$_ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'price')
  final double? price;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  @JsonKey(name: 'discount')
  final int? discount;
  @override
  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;
  final List<Variants>? _variants;
  @override
  @JsonKey(name: 'variants')
  List<Variants>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Review>? _reviews;
  @override
  @JsonKey(name: 'reviews')
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, name: $name, description: $description, price: $price, thumbnailUrl: $thumbnailUrl, discount: $discount, isFavorite: $isFavorite, variants: $variants, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      price,
      thumbnailUrl,
      discount,
      isFavorite,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      __$$_ProductDetailsModelCopyWithImpl<_$_ProductDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDetailsModelToJson(
      this,
    );
  }
}

abstract class _ProductDetailsModel implements ProductDetailsModel {
  factory _ProductDetailsModel(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'price') final double? price,
          @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
          @JsonKey(name: 'discount') final int? discount,
          @JsonKey(name: 'is_favorite') final bool? isFavorite,
          @JsonKey(name: 'variants') final List<Variants>? variants,
          @JsonKey(name: 'reviews') final List<Review>? reviews}) =
      _$_ProductDetailsModel;

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'price')
  double? get price;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  @JsonKey(name: 'discount')
  int? get discount;
  @override
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite;
  @override
  @JsonKey(name: 'variants')
  List<Variants>? get variants;
  @override
  @JsonKey(name: 'reviews')
  List<Review>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantSizes _$VariantSizesFromJson(Map<String, dynamic> json) {
  return _VariantSizes.fromJson(json);
}

/// @nodoc
mixin _$VariantSizes {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'size_text')
  String? get sizeText => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  int? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant_id')
  int? get variantId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantSizesCopyWith<VariantSizes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantSizesCopyWith<$Res> {
  factory $VariantSizesCopyWith(
          VariantSizes value, $Res Function(VariantSizes) then) =
      _$VariantSizesCopyWithImpl<$Res, VariantSizes>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'size_text') String? sizeText,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'qty') int? qty,
      @JsonKey(name: 'variant_id') int? variantId});
}

/// @nodoc
class _$VariantSizesCopyWithImpl<$Res, $Val extends VariantSizes>
    implements $VariantSizesCopyWith<$Res> {
  _$VariantSizesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sizeText = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? variantId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeText: freezed == sizeText
          ? _value.sizeText
          : sizeText // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantSizesCopyWith<$Res>
    implements $VariantSizesCopyWith<$Res> {
  factory _$$_VariantSizesCopyWith(
          _$_VariantSizes value, $Res Function(_$_VariantSizes) then) =
      __$$_VariantSizesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'size_text') String? sizeText,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'qty') int? qty,
      @JsonKey(name: 'variant_id') int? variantId});
}

/// @nodoc
class __$$_VariantSizesCopyWithImpl<$Res>
    extends _$VariantSizesCopyWithImpl<$Res, _$_VariantSizes>
    implements _$$_VariantSizesCopyWith<$Res> {
  __$$_VariantSizesCopyWithImpl(
      _$_VariantSizes _value, $Res Function(_$_VariantSizes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sizeText = freezed,
    Object? price = freezed,
    Object? qty = freezed,
    Object? variantId = freezed,
  }) {
    return _then(_$_VariantSizes(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeText: freezed == sizeText
          ? _value.sizeText
          : sizeText // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
      variantId: freezed == variantId
          ? _value.variantId
          : variantId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantSizes implements _VariantSizes {
  _$_VariantSizes(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'size_text') this.sizeText,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'qty') this.qty,
      @JsonKey(name: 'variant_id') this.variantId});

  factory _$_VariantSizes.fromJson(Map<String, dynamic> json) =>
      _$$_VariantSizesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'size_text')
  final String? sizeText;
  @override
  @JsonKey(name: 'price')
  final double? price;
  @override
  @JsonKey(name: 'qty')
  final int? qty;
  @override
  @JsonKey(name: 'variant_id')
  final int? variantId;

  @override
  String toString() {
    return 'VariantSizes(id: $id, sizeText: $sizeText, price: $price, qty: $qty, variantId: $variantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantSizes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sizeText, sizeText) ||
                other.sizeText == sizeText) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.variantId, variantId) ||
                other.variantId == variantId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sizeText, price, qty, variantId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantSizesCopyWith<_$_VariantSizes> get copyWith =>
      __$$_VariantSizesCopyWithImpl<_$_VariantSizes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantSizesToJson(
      this,
    );
  }
}

abstract class _VariantSizes implements VariantSizes {
  factory _VariantSizes(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'size_text') final String? sizeText,
      @JsonKey(name: 'price') final double? price,
      @JsonKey(name: 'qty') final int? qty,
      @JsonKey(name: 'variant_id') final int? variantId}) = _$_VariantSizes;

  factory _VariantSizes.fromJson(Map<String, dynamic> json) =
      _$_VariantSizes.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'size_text')
  String? get sizeText;
  @override
  @JsonKey(name: 'price')
  double? get price;
  @override
  @JsonKey(name: 'qty')
  int? get qty;
  @override
  @JsonKey(name: 'variant_id')
  int? get variantId;
  @override
  @JsonKey(ignore: true)
  _$$_VariantSizesCopyWith<_$_VariantSizes> get copyWith =>
      throw _privateConstructorUsedError;
}

Variants _$VariantsFromJson(Map<String, dynamic> json) {
  return _Variants.fromJson(json);
}

/// @nodoc
mixin _$Variants {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'value')
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'sizes')
  List<VariantSizes>? get sizes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantsCopyWith<Variants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantsCopyWith<$Res> {
  factory $VariantsCopyWith(Variants value, $Res Function(Variants) then) =
      _$VariantsCopyWithImpl<$Res, Variants>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'sizes') List<VariantSizes>? sizes});
}

/// @nodoc
class _$VariantsCopyWithImpl<$Res, $Val extends Variants>
    implements $VariantsCopyWith<$Res> {
  _$VariantsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? productName = freezed,
    Object? imageUrl = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sizes: freezed == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<VariantSizes>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantsCopyWith<$Res> implements $VariantsCopyWith<$Res> {
  factory _$$_VariantsCopyWith(
          _$_Variants value, $Res Function(_$_Variants) then) =
      __$$_VariantsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'sizes') List<VariantSizes>? sizes});
}

/// @nodoc
class __$$_VariantsCopyWithImpl<$Res>
    extends _$VariantsCopyWithImpl<$Res, _$_Variants>
    implements _$$_VariantsCopyWith<$Res> {
  __$$_VariantsCopyWithImpl(
      _$_Variants _value, $Res Function(_$_Variants) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? productName = freezed,
    Object? imageUrl = freezed,
    Object? sizes = freezed,
  }) {
    return _then(_$_Variants(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sizes: freezed == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<VariantSizes>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Variants implements _Variants {
  _$_Variants(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'value') this.value,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'sizes') final List<VariantSizes>? sizes})
      : _sizes = sizes;

  factory _$_Variants.fromJson(Map<String, dynamic> json) =>
      _$$_VariantsFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'value')
  final String? value;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  final List<VariantSizes>? _sizes;
  @override
  @JsonKey(name: 'sizes')
  List<VariantSizes>? get sizes {
    final value = _sizes;
    if (value == null) return null;
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Variants(id: $id, name: $name, value: $value, productName: $productName, imageUrl: $imageUrl, sizes: $sizes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Variants &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, value, productName,
      imageUrl, const DeepCollectionEquality().hash(_sizes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantsCopyWith<_$_Variants> get copyWith =>
      __$$_VariantsCopyWithImpl<_$_Variants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantsToJson(
      this,
    );
  }
}

abstract class _Variants implements Variants {
  factory _Variants(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'value') final String? value,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'sizes') final List<VariantSizes>? sizes}) = _$_Variants;

  factory _Variants.fromJson(Map<String, dynamic> json) = _$_Variants.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'value')
  String? get value;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'sizes')
  List<VariantSizes>? get sizes;
  @override
  @JsonKey(ignore: true)
  _$$_VariantsCopyWith<_$_Variants> get copyWith =>
      throw _privateConstructorUsedError;
}

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  num? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'review_text')
  String? get reviewText => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'rating') num? rating,
      @JsonKey(name: 'review_text') String? reviewText,
      @JsonKey(name: 'user') User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? reviewText = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewText: freezed == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$_ReviewCopyWith(_$_Review value, $Res Function(_$_Review) then) =
      __$$_ReviewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'rating') num? rating,
      @JsonKey(name: 'review_text') String? reviewText,
      @JsonKey(name: 'user') User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ReviewCopyWithImpl<$Res>
    extends _$ReviewCopyWithImpl<$Res, _$_Review>
    implements _$$_ReviewCopyWith<$Res> {
  __$$_ReviewCopyWithImpl(_$_Review _value, $Res Function(_$_Review) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? rating = freezed,
    Object? reviewText = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Review(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as num?,
      reviewText: freezed == reviewText
          ? _value.reviewText
          : reviewText // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  _$_Review(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'review_text') this.reviewText,
      @JsonKey(name: 'user') this.user});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'rating')
  final num? rating;
  @override
  @JsonKey(name: 'review_text')
  final String? reviewText;
  @override
  @JsonKey(name: 'user')
  final User? user;

  @override
  String toString() {
    return 'Review(id: $id, rating: $rating, reviewText: $reviewText, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Review &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.reviewText, reviewText) ||
                other.reviewText == reviewText) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, rating, reviewText, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      __$$_ReviewCopyWithImpl<_$_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  factory _Review(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'rating') final num? rating,
      @JsonKey(name: 'review_text') final String? reviewText,
      @JsonKey(name: 'user') final User? user}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'rating')
  num? get rating;
  @override
  @JsonKey(name: 'review_text')
  String? get reviewText;
  @override
  @JsonKey(name: 'user')
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewCopyWith<_$_Review> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_$_User(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;

  @override
  String toString() {
    return 'User(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
