// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ViewOrderModel _$ViewOrderModelFromJson(Map<String, dynamic> json) {
  return _ViewOrderModel.fromJson(json);
}

/// @nodoc
mixin _$ViewOrderModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double? get totalAmount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryaddress')
  Deliveryaddress? get deliveryaddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderitems')
  List<Orderitems>? get orderitems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewOrderModelCopyWith<ViewOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewOrderModelCopyWith<$Res> {
  factory $ViewOrderModelCopyWith(
          ViewOrderModel value, $Res Function(ViewOrderModel) then) =
      _$ViewOrderModelCopyWithImpl<$Res, ViewOrderModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'total_amount') double? totalAmount,
      String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deliveryaddress') Deliveryaddress? deliveryaddress,
      @JsonKey(name: 'orderitems') List<Orderitems>? orderitems});

  $DeliveryaddressCopyWith<$Res>? get deliveryaddress;
}

/// @nodoc
class _$ViewOrderModelCopyWithImpl<$Res, $Val extends ViewOrderModel>
    implements $ViewOrderModelCopyWith<$Res> {
  _$ViewOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalAmount = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryaddress = freezed,
    Object? orderitems = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryaddress: freezed == deliveryaddress
          ? _value.deliveryaddress
          : deliveryaddress // ignore: cast_nullable_to_non_nullable
              as Deliveryaddress?,
      orderitems: freezed == orderitems
          ? _value.orderitems
          : orderitems // ignore: cast_nullable_to_non_nullable
              as List<Orderitems>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryaddressCopyWith<$Res>? get deliveryaddress {
    if (_value.deliveryaddress == null) {
      return null;
    }

    return $DeliveryaddressCopyWith<$Res>(_value.deliveryaddress!, (value) {
      return _then(_value.copyWith(deliveryaddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ViewOrderModelCopyWith<$Res>
    implements $ViewOrderModelCopyWith<$Res> {
  factory _$$_ViewOrderModelCopyWith(
          _$_ViewOrderModel value, $Res Function(_$_ViewOrderModel) then) =
      __$$_ViewOrderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'total_amount') double? totalAmount,
      String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deliveryaddress') Deliveryaddress? deliveryaddress,
      @JsonKey(name: 'orderitems') List<Orderitems>? orderitems});

  @override
  $DeliveryaddressCopyWith<$Res>? get deliveryaddress;
}

/// @nodoc
class __$$_ViewOrderModelCopyWithImpl<$Res>
    extends _$ViewOrderModelCopyWithImpl<$Res, _$_ViewOrderModel>
    implements _$$_ViewOrderModelCopyWith<$Res> {
  __$$_ViewOrderModelCopyWithImpl(
      _$_ViewOrderModel _value, $Res Function(_$_ViewOrderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalAmount = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deliveryaddress = freezed,
    Object? orderitems = freezed,
  }) {
    return _then(_$_ViewOrderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryaddress: freezed == deliveryaddress
          ? _value.deliveryaddress
          : deliveryaddress // ignore: cast_nullable_to_non_nullable
              as Deliveryaddress?,
      orderitems: freezed == orderitems
          ? _value._orderitems
          : orderitems // ignore: cast_nullable_to_non_nullable
              as List<Orderitems>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ViewOrderModel implements _ViewOrderModel {
  _$_ViewOrderModel(
      {this.id,
      @JsonKey(name: 'total_amount') this.totalAmount,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deliveryaddress') this.deliveryaddress,
      @JsonKey(name: 'orderitems') final List<Orderitems>? orderitems})
      : _orderitems = orderitems;

  factory _$_ViewOrderModel.fromJson(Map<String, dynamic> json) =>
      _$$_ViewOrderModelFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'total_amount')
  final double? totalAmount;
  @override
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'deliveryaddress')
  final Deliveryaddress? deliveryaddress;
  final List<Orderitems>? _orderitems;
  @override
  @JsonKey(name: 'orderitems')
  List<Orderitems>? get orderitems {
    final value = _orderitems;
    if (value == null) return null;
    if (_orderitems is EqualUnmodifiableListView) return _orderitems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ViewOrderModel(id: $id, totalAmount: $totalAmount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deliveryaddress: $deliveryaddress, orderitems: $orderitems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ViewOrderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deliveryaddress, deliveryaddress) ||
                other.deliveryaddress == deliveryaddress) &&
            const DeepCollectionEquality()
                .equals(other._orderitems, _orderitems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      totalAmount,
      status,
      createdAt,
      updatedAt,
      deliveryaddress,
      const DeepCollectionEquality().hash(_orderitems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ViewOrderModelCopyWith<_$_ViewOrderModel> get copyWith =>
      __$$_ViewOrderModelCopyWithImpl<_$_ViewOrderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViewOrderModelToJson(
      this,
    );
  }
}

abstract class _ViewOrderModel implements ViewOrderModel {
  factory _ViewOrderModel(
      {final int? id,
      @JsonKey(name: 'total_amount') final double? totalAmount,
      final String? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'deliveryaddress') final Deliveryaddress? deliveryaddress,
      @JsonKey(name: 'orderitems')
      final List<Orderitems>? orderitems}) = _$_ViewOrderModel;

  factory _ViewOrderModel.fromJson(Map<String, dynamic> json) =
      _$_ViewOrderModel.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'total_amount')
  double? get totalAmount;
  @override
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'deliveryaddress')
  Deliveryaddress? get deliveryaddress;
  @override
  @JsonKey(name: 'orderitems')
  List<Orderitems>? get orderitems;
  @override
  @JsonKey(ignore: true)
  _$$_ViewOrderModelCopyWith<_$_ViewOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Deliveryaddress _$DeliveryaddressFromJson(Map<String, dynamic> json) {
  return _Deliveryaddress.fromJson(json);
}

/// @nodoc
mixin _$Deliveryaddress {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_no')
  String? get streetNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_no')
  String? get homeNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_address')
  String? get fullAddress => throw _privateConstructorUsedError;
  double? get latitute => throw _privateConstructorUsedError;
  int? get longtitute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryaddressCopyWith<Deliveryaddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryaddressCopyWith<$Res> {
  factory $DeliveryaddressCopyWith(
          Deliveryaddress value, $Res Function(Deliveryaddress) then) =
      _$DeliveryaddressCopyWithImpl<$Res, Deliveryaddress>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'street_no') String? streetNo,
      @JsonKey(name: 'home_no') String? homeNo,
      @JsonKey(name: 'full_address') String? fullAddress,
      double? latitute,
      int? longtitute});
}

/// @nodoc
class _$DeliveryaddressCopyWithImpl<$Res, $Val extends Deliveryaddress>
    implements $DeliveryaddressCopyWith<$Res> {
  _$DeliveryaddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streetNo = freezed,
    Object? homeNo = freezed,
    Object? fullAddress = freezed,
    Object? latitute = freezed,
    Object? longtitute = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streetNo: freezed == streetNo
          ? _value.streetNo
          : streetNo // ignore: cast_nullable_to_non_nullable
              as String?,
      homeNo: freezed == homeNo
          ? _value.homeNo
          : homeNo // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      latitute: freezed == latitute
          ? _value.latitute
          : latitute // ignore: cast_nullable_to_non_nullable
              as double?,
      longtitute: freezed == longtitute
          ? _value.longtitute
          : longtitute // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryaddressCopyWith<$Res>
    implements $DeliveryaddressCopyWith<$Res> {
  factory _$$_DeliveryaddressCopyWith(
          _$_Deliveryaddress value, $Res Function(_$_Deliveryaddress) then) =
      __$$_DeliveryaddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'street_no') String? streetNo,
      @JsonKey(name: 'home_no') String? homeNo,
      @JsonKey(name: 'full_address') String? fullAddress,
      double? latitute,
      int? longtitute});
}

/// @nodoc
class __$$_DeliveryaddressCopyWithImpl<$Res>
    extends _$DeliveryaddressCopyWithImpl<$Res, _$_Deliveryaddress>
    implements _$$_DeliveryaddressCopyWith<$Res> {
  __$$_DeliveryaddressCopyWithImpl(
      _$_Deliveryaddress _value, $Res Function(_$_Deliveryaddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? streetNo = freezed,
    Object? homeNo = freezed,
    Object? fullAddress = freezed,
    Object? latitute = freezed,
    Object? longtitute = freezed,
  }) {
    return _then(_$_Deliveryaddress(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      streetNo: freezed == streetNo
          ? _value.streetNo
          : streetNo // ignore: cast_nullable_to_non_nullable
              as String?,
      homeNo: freezed == homeNo
          ? _value.homeNo
          : homeNo // ignore: cast_nullable_to_non_nullable
              as String?,
      fullAddress: freezed == fullAddress
          ? _value.fullAddress
          : fullAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      latitute: freezed == latitute
          ? _value.latitute
          : latitute // ignore: cast_nullable_to_non_nullable
              as double?,
      longtitute: freezed == longtitute
          ? _value.longtitute
          : longtitute // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Deliveryaddress implements _Deliveryaddress {
  _$_Deliveryaddress(
      {this.id,
      @JsonKey(name: 'street_no') this.streetNo,
      @JsonKey(name: 'home_no') this.homeNo,
      @JsonKey(name: 'full_address') this.fullAddress,
      this.latitute,
      this.longtitute});

  factory _$_Deliveryaddress.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryaddressFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'street_no')
  final String? streetNo;
  @override
  @JsonKey(name: 'home_no')
  final String? homeNo;
  @override
  @JsonKey(name: 'full_address')
  final String? fullAddress;
  @override
  final double? latitute;
  @override
  final int? longtitute;

  @override
  String toString() {
    return 'Deliveryaddress(id: $id, streetNo: $streetNo, homeNo: $homeNo, fullAddress: $fullAddress, latitute: $latitute, longtitute: $longtitute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Deliveryaddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetNo, streetNo) ||
                other.streetNo == streetNo) &&
            (identical(other.homeNo, homeNo) || other.homeNo == homeNo) &&
            (identical(other.fullAddress, fullAddress) ||
                other.fullAddress == fullAddress) &&
            (identical(other.latitute, latitute) ||
                other.latitute == latitute) &&
            (identical(other.longtitute, longtitute) ||
                other.longtitute == longtitute));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, streetNo, homeNo, fullAddress, latitute, longtitute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryaddressCopyWith<_$_Deliveryaddress> get copyWith =>
      __$$_DeliveryaddressCopyWithImpl<_$_Deliveryaddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryaddressToJson(
      this,
    );
  }
}

abstract class _Deliveryaddress implements Deliveryaddress {
  factory _Deliveryaddress(
      {final int? id,
      @JsonKey(name: 'street_no') final String? streetNo,
      @JsonKey(name: 'home_no') final String? homeNo,
      @JsonKey(name: 'full_address') final String? fullAddress,
      final double? latitute,
      final int? longtitute}) = _$_Deliveryaddress;

  factory _Deliveryaddress.fromJson(Map<String, dynamic> json) =
      _$_Deliveryaddress.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'street_no')
  String? get streetNo;
  @override
  @JsonKey(name: 'home_no')
  String? get homeNo;
  @override
  @JsonKey(name: 'full_address')
  String? get fullAddress;
  @override
  double? get latitute;
  @override
  int? get longtitute;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryaddressCopyWith<_$_Deliveryaddress> get copyWith =>
      throw _privateConstructorUsedError;
}

Orderitems _$OrderitemsFromJson(Map<String, dynamic> json) {
  return _Orderitems.fromJson(json);
}

/// @nodoc
mixin _$Orderitems {
  int? get id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  VariantModel? get variant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderitemsCopyWith<Orderitems> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderitemsCopyWith<$Res> {
  factory $OrderitemsCopyWith(
          Orderitems value, $Res Function(Orderitems) then) =
      _$OrderitemsCopyWithImpl<$Res, Orderitems>;
  @useResult
  $Res call({int? id, int? quantity, double? price, VariantModel? variant});

  $VariantModelCopyWith<$Res>? get variant;
}

/// @nodoc
class _$OrderitemsCopyWithImpl<$Res, $Val extends Orderitems>
    implements $OrderitemsCopyWith<$Res> {
  _$OrderitemsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? variant = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariantModelCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $VariantModelCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderitemsCopyWith<$Res>
    implements $OrderitemsCopyWith<$Res> {
  factory _$$_OrderitemsCopyWith(
          _$_Orderitems value, $Res Function(_$_Orderitems) then) =
      __$$_OrderitemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? quantity, double? price, VariantModel? variant});

  @override
  $VariantModelCopyWith<$Res>? get variant;
}

/// @nodoc
class __$$_OrderitemsCopyWithImpl<$Res>
    extends _$OrderitemsCopyWithImpl<$Res, _$_Orderitems>
    implements _$$_OrderitemsCopyWith<$Res> {
  __$$_OrderitemsCopyWithImpl(
      _$_Orderitems _value, $Res Function(_$_Orderitems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? variant = freezed,
  }) {
    return _then(_$_Orderitems(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Orderitems implements _Orderitems {
  _$_Orderitems({this.id, this.quantity, this.price, this.variant});

  factory _$_Orderitems.fromJson(Map<String, dynamic> json) =>
      _$$_OrderitemsFromJson(json);

  @override
  final int? id;
  @override
  final int? quantity;
  @override
  final double? price;
  @override
  final VariantModel? variant;

  @override
  String toString() {
    return 'Orderitems(id: $id, quantity: $quantity, price: $price, variant: $variant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Orderitems &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.variant, variant) || other.variant == variant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, quantity, price, variant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderitemsCopyWith<_$_Orderitems> get copyWith =>
      __$$_OrderitemsCopyWithImpl<_$_Orderitems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderitemsToJson(
      this,
    );
  }
}

abstract class _Orderitems implements Orderitems {
  factory _Orderitems(
      {final int? id,
      final int? quantity,
      final double? price,
      final VariantModel? variant}) = _$_Orderitems;

  factory _Orderitems.fromJson(Map<String, dynamic> json) =
      _$_Orderitems.fromJson;

  @override
  int? get id;
  @override
  int? get quantity;
  @override
  double? get price;
  @override
  VariantModel? get variant;
  @override
  @JsonKey(ignore: true)
  _$$_OrderitemsCopyWith<_$_Orderitems> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantModel _$VariantModelFromJson(Map<String, dynamic> json) {
  return _VariantModel.fromJson(json);
}

/// @nodoc
mixin _$VariantModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'productName')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantModelCopyWith<VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantModelCopyWith<$Res> {
  factory $VariantModelCopyWith(
          VariantModel value, $Res Function(VariantModel) then) =
      _$VariantModelCopyWithImpl<$Res, VariantModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? value,
      @JsonKey(name: 'productName') String? productName,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'product_id') int? productId});
}

/// @nodoc
class _$VariantModelCopyWithImpl<$Res, $Val extends VariantModel>
    implements $VariantModelCopyWith<$Res> {
  _$VariantModelCopyWithImpl(this._value, this._then);

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
    Object? productId = freezed,
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
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VariantModelCopyWith<$Res>
    implements $VariantModelCopyWith<$Res> {
  factory _$$_VariantModelCopyWith(
          _$_VariantModel value, $Res Function(_$_VariantModel) then) =
      __$$_VariantModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? value,
      @JsonKey(name: 'productName') String? productName,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'product_id') int? productId});
}

/// @nodoc
class __$$_VariantModelCopyWithImpl<$Res>
    extends _$VariantModelCopyWithImpl<$Res, _$_VariantModel>
    implements _$$_VariantModelCopyWith<$Res> {
  __$$_VariantModelCopyWithImpl(
      _$_VariantModel _value, $Res Function(_$_VariantModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? productName = freezed,
    Object? imageUrl = freezed,
    Object? productId = freezed,
  }) {
    return _then(_$_VariantModel(
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
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VariantModel implements _VariantModel {
  _$_VariantModel(
      {this.id,
      this.name,
      this.value,
      @JsonKey(name: 'productName') this.productName,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'product_id') this.productId});

  factory _$_VariantModel.fromJson(Map<String, dynamic> json) =>
      _$$_VariantModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? value;
  @override
  @JsonKey(name: 'productName')
  final String? productName;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;

  @override
  String toString() {
    return 'VariantModel(id: $id, name: $name, value: $value, productName: $productName, imageUrl: $imageUrl, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VariantModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, value, productName, imageUrl, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      __$$_VariantModelCopyWithImpl<_$_VariantModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VariantModelToJson(
      this,
    );
  }
}

abstract class _VariantModel implements VariantModel {
  factory _VariantModel(
      {final int? id,
      final String? name,
      final String? value,
      @JsonKey(name: 'productName') final String? productName,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'product_id') final int? productId}) = _$_VariantModel;

  factory _VariantModel.fromJson(Map<String, dynamic> json) =
      _$_VariantModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(name: 'productName')
  String? get productName;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(ignore: true)
  _$$_VariantModelCopyWith<_$_VariantModel> get copyWith =>
      throw _privateConstructorUsedError;
}
