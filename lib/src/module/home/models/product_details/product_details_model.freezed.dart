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
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite => throw _privateConstructorUsedError;
  List<VariantsModel>? get variants => throw _privateConstructorUsedError;

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
      {int? id,
      String? name,
      String? description,
      double? price,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      double? discount,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      List<VariantsModel>? variants});
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
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      variants: freezed == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantsModel>?,
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
      {int? id,
      String? name,
      String? description,
      double? price,
      @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
      double? discount,
      @JsonKey(name: 'is_favorite') bool? isFavorite,
      List<VariantsModel>? variants});
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
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      variants: freezed == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<VariantsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDetailsModel implements _ProductDetailsModel {
  _$_ProductDetailsModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      @JsonKey(name: 'thumbnail_url') this.thumbnailUrl,
      this.discount,
      @JsonKey(name: 'is_favorite') this.isFavorite,
      final List<VariantsModel>? variants})
      : _variants = variants;

  factory _$_ProductDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDetailsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? price;
  @override
  @JsonKey(name: 'thumbnail_url')
  final String? thumbnailUrl;
  @override
  final double? discount;
  @override
  @JsonKey(name: 'is_favorite')
  final bool? isFavorite;
  final List<VariantsModel>? _variants;
  @override
  List<VariantsModel>? get variants {
    final value = _variants;
    if (value == null) return null;
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailsModel(id: $id, name: $name, description: $description, price: $price, thumbnailUrl: $thumbnailUrl, discount: $discount, isFavorite: $isFavorite, variants: $variants)';
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
            const DeepCollectionEquality().equals(other._variants, _variants));
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
      const DeepCollectionEquality().hash(_variants));

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
      {final int? id,
      final String? name,
      final String? description,
      final double? price,
      @JsonKey(name: 'thumbnail_url') final String? thumbnailUrl,
      final double? discount,
      @JsonKey(name: 'is_favorite') final bool? isFavorite,
      final List<VariantsModel>? variants}) = _$_ProductDetailsModel;

  factory _ProductDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDetailsModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  double? get price;
  @override
  @JsonKey(name: 'thumbnail_url')
  String? get thumbnailUrl;
  @override
  double? get discount;
  @override
  @JsonKey(name: 'is_favorite')
  bool? get isFavorite;
  @override
  List<VariantsModel>? get variants;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailsModelCopyWith<_$_ProductDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantsModel _$VariantsModelFromJson(Map<String, dynamic> json) {
  return _VariantsModel.fromJson(json);
}

/// @nodoc
mixin _$VariantsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  List<String>? get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantsModelCopyWith<VariantsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantsModelCopyWith<$Res> {
  factory $VariantsModelCopyWith(
          VariantsModel value, $Res Function(VariantsModel) then) =
      _$VariantsModelCopyWithImpl<$Res, VariantsModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'image_url') String? imageUrl,
      double? price,
      int? quantity,
      List<String>? colors});
}

/// @nodoc
class _$VariantsModelCopyWithImpl<$Res, $Val extends VariantsModel>
    implements $VariantsModelCopyWith<$Res> {
  _$VariantsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? colors = freezed,
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
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantsModelCopyWith<$Res>
    implements $VariantsModelCopyWith<$Res> {
  factory _$$_VariantsModelCopyWith(
          _$_VariantsModel value, $Res Function(_$_VariantsModel) then) =
      __$$_VariantsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'image_url') String? imageUrl,
      double? price,
      int? quantity,
      List<String>? colors});
}

/// @nodoc
class __$$_VariantsModelCopyWithImpl<$Res>
    extends _$VariantsModelCopyWithImpl<$Res, _$_VariantsModel>
    implements _$$_VariantsModelCopyWith<$Res> {
  __$$_VariantsModelCopyWithImpl(
      _$_VariantsModel _value, $Res Function(_$_VariantsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? colors = freezed,
  }) {
    return _then(_$_VariantsModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      colors: freezed == colors
          ? _value._colors
          : colors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantsModel implements _VariantsModel {
  _$_VariantsModel(
      {this.id,
      this.name,
      @JsonKey(name: 'image_url') this.imageUrl,
      this.price,
      this.quantity,
      final List<String>? colors})
      : _colors = colors;

  factory _$_VariantsModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantsModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final double? price;
  @override
  final int? quantity;
  final List<String>? _colors;
  @override
  List<String>? get colors {
    final value = _colors;
    if (value == null) return null;
    if (_colors is EqualUnmodifiableListView) return _colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VariantsModel(id: $id, name: $name, imageUrl: $imageUrl, price: $price, quantity: $quantity, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantsModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            const DeepCollectionEquality().equals(other._colors, _colors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl, price,
      quantity, const DeepCollectionEquality().hash(_colors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantsModelCopyWith<_$_VariantsModel> get copyWith =>
      __$$_VariantsModelCopyWithImpl<_$_VariantsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantsModelToJson(
      this,
    );
  }
}

abstract class _VariantsModel implements VariantsModel {
  factory _VariantsModel(
      {final int? id,
      final String? name,
      @JsonKey(name: 'image_url') final String? imageUrl,
      final double? price,
      final int? quantity,
      final List<String>? colors}) = _$_VariantsModel;

  factory _VariantsModel.fromJson(Map<String, dynamic> json) =
      _$_VariantsModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  double? get price;
  @override
  int? get quantity;
  @override
  List<String>? get colors;
  @override
  @JsonKey(ignore: true)
  _$$_VariantsModelCopyWith<_$_VariantsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
