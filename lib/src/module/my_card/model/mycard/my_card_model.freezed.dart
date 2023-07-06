// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyCardModel _$MyCardModelFromJson(Map<String, dynamic> json) {
  return _MyCardModel.fromJson(json);
}

/// @nodoc
mixin _$MyCardModel {
  int? get id => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  VaiantMyCardModel? get variant => throw _privateConstructorUsedError;
  ProMyCardModel? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyCardModelCopyWith<MyCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyCardModelCopyWith<$Res> {
  factory $MyCardModelCopyWith(
          MyCardModel value, $Res Function(MyCardModel) then) =
      _$MyCardModelCopyWithImpl<$Res, MyCardModel>;
  @useResult
  $Res call(
      {int? id,
      double? price,
      int? quantity,
      String? createdAt,
      VaiantMyCardModel? variant,
      ProMyCardModel? product});

  $VaiantMyCardModelCopyWith<$Res>? get variant;
  $ProMyCardModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$MyCardModelCopyWithImpl<$Res, $Val extends MyCardModel>
    implements $MyCardModelCopyWith<$Res> {
  _$MyCardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? createdAt = freezed,
    Object? variant = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VaiantMyCardModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProMyCardModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VaiantMyCardModelCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $VaiantMyCardModelCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProMyCardModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProMyCardModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MyCardModelCopyWith<$Res>
    implements $MyCardModelCopyWith<$Res> {
  factory _$$_MyCardModelCopyWith(
          _$_MyCardModel value, $Res Function(_$_MyCardModel) then) =
      __$$_MyCardModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      double? price,
      int? quantity,
      String? createdAt,
      VaiantMyCardModel? variant,
      ProMyCardModel? product});

  @override
  $VaiantMyCardModelCopyWith<$Res>? get variant;
  @override
  $ProMyCardModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$_MyCardModelCopyWithImpl<$Res>
    extends _$MyCardModelCopyWithImpl<$Res, _$_MyCardModel>
    implements _$$_MyCardModelCopyWith<$Res> {
  __$$_MyCardModelCopyWithImpl(
      _$_MyCardModel _value, $Res Function(_$_MyCardModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? createdAt = freezed,
    Object? variant = freezed,
    Object? product = freezed,
  }) {
    return _then(_$_MyCardModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VaiantMyCardModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProMyCardModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyCardModel implements _MyCardModel {
  _$_MyCardModel(
      {this.id,
      this.price,
      this.quantity,
      this.createdAt,
      this.variant,
      this.product});

  factory _$_MyCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_MyCardModelFromJson(json);

  @override
  final int? id;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final String? createdAt;
  @override
  final VaiantMyCardModel? variant;
  @override
  final ProMyCardModel? product;

  @override
  String toString() {
    return 'MyCardModel(id: $id, price: $price, quantity: $quantity, createdAt: $createdAt, variant: $variant, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyCardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, price, quantity, createdAt, variant, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyCardModelCopyWith<_$_MyCardModel> get copyWith =>
      __$$_MyCardModelCopyWithImpl<_$_MyCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyCardModelToJson(
      this,
    );
  }
}

abstract class _MyCardModel implements MyCardModel {
  factory _MyCardModel(
      {final int? id,
      final double? price,
      final int? quantity,
      final String? createdAt,
      final VaiantMyCardModel? variant,
      final ProMyCardModel? product}) = _$_MyCardModel;

  factory _MyCardModel.fromJson(Map<String, dynamic> json) =
      _$_MyCardModel.fromJson;

  @override
  int? get id;
  @override
  double? get price;
  @override
  int? get quantity;
  @override
  String? get createdAt;
  @override
  VaiantMyCardModel? get variant;
  @override
  ProMyCardModel? get product;
  @override
  @JsonKey(ignore: true)
  _$$_MyCardModelCopyWith<_$_MyCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
