// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderInvoiceModel _$OrderInvoiceModelFromJson(Map<String, dynamic> json) {
  return _OrderInvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$OrderInvoiceModel {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryaddress')
  DeliveryAddressInvoice? get deliveryaddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'orderitems')
  List<OrderitemsInvoice>? get orderitems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderInvoiceModelCopyWith<OrderInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderInvoiceModelCopyWith<$Res> {
  factory $OrderInvoiceModelCopyWith(
          OrderInvoiceModel value, $Res Function(OrderInvoiceModel) then) =
      _$OrderInvoiceModelCopyWithImpl<$Res, OrderInvoiceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_amount') double? totalAmount,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deliveryaddress') DeliveryAddressInvoice? deliveryaddress,
      @JsonKey(name: 'orderitems') List<OrderitemsInvoice>? orderitems});

  $DeliveryAddressInvoiceCopyWith<$Res>? get deliveryaddress;
}

/// @nodoc
class _$OrderInvoiceModelCopyWithImpl<$Res, $Val extends OrderInvoiceModel>
    implements $OrderInvoiceModelCopyWith<$Res> {
  _$OrderInvoiceModelCopyWithImpl(this._value, this._then);

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
              as DeliveryAddressInvoice?,
      orderitems: freezed == orderitems
          ? _value.orderitems
          : orderitems // ignore: cast_nullable_to_non_nullable
              as List<OrderitemsInvoice>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryAddressInvoiceCopyWith<$Res>? get deliveryaddress {
    if (_value.deliveryaddress == null) {
      return null;
    }

    return $DeliveryAddressInvoiceCopyWith<$Res>(_value.deliveryaddress!,
        (value) {
      return _then(_value.copyWith(deliveryaddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderInvoiceModelCopyWith<$Res>
    implements $OrderInvoiceModelCopyWith<$Res> {
  factory _$$_OrderInvoiceModelCopyWith(_$_OrderInvoiceModel value,
          $Res Function(_$_OrderInvoiceModel) then) =
      __$$_OrderInvoiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'total_amount') double? totalAmount,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'deliveryaddress') DeliveryAddressInvoice? deliveryaddress,
      @JsonKey(name: 'orderitems') List<OrderitemsInvoice>? orderitems});

  @override
  $DeliveryAddressInvoiceCopyWith<$Res>? get deliveryaddress;
}

/// @nodoc
class __$$_OrderInvoiceModelCopyWithImpl<$Res>
    extends _$OrderInvoiceModelCopyWithImpl<$Res, _$_OrderInvoiceModel>
    implements _$$_OrderInvoiceModelCopyWith<$Res> {
  __$$_OrderInvoiceModelCopyWithImpl(
      _$_OrderInvoiceModel _value, $Res Function(_$_OrderInvoiceModel) _then)
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
    return _then(_$_OrderInvoiceModel(
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
              as DeliveryAddressInvoice?,
      orderitems: freezed == orderitems
          ? _value._orderitems
          : orderitems // ignore: cast_nullable_to_non_nullable
              as List<OrderitemsInvoice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderInvoiceModel implements _OrderInvoiceModel {
  _$_OrderInvoiceModel(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'deliveryaddress') this.deliveryaddress,
      @JsonKey(name: 'orderitems') final List<OrderitemsInvoice>? orderitems})
      : _orderitems = orderitems;

  factory _$_OrderInvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderInvoiceModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'total_amount')
  final double? totalAmount;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'deliveryaddress')
  final DeliveryAddressInvoice? deliveryaddress;
  final List<OrderitemsInvoice>? _orderitems;
  @override
  @JsonKey(name: 'orderitems')
  List<OrderitemsInvoice>? get orderitems {
    final value = _orderitems;
    if (value == null) return null;
    if (_orderitems is EqualUnmodifiableListView) return _orderitems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderInvoiceModel(id: $id, totalAmount: $totalAmount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deliveryaddress: $deliveryaddress, orderitems: $orderitems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderInvoiceModel &&
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
  _$$_OrderInvoiceModelCopyWith<_$_OrderInvoiceModel> get copyWith =>
      __$$_OrderInvoiceModelCopyWithImpl<_$_OrderInvoiceModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderInvoiceModelToJson(
      this,
    );
  }
}

abstract class _OrderInvoiceModel implements OrderInvoiceModel {
  factory _OrderInvoiceModel(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'total_amount') final double? totalAmount,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'deliveryaddress')
      final DeliveryAddressInvoice? deliveryaddress,
      @JsonKey(name: 'orderitems')
      final List<OrderitemsInvoice>? orderitems}) = _$_OrderInvoiceModel;

  factory _OrderInvoiceModel.fromJson(Map<String, dynamic> json) =
      _$_OrderInvoiceModel.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'total_amount')
  double? get totalAmount;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'deliveryaddress')
  DeliveryAddressInvoice? get deliveryaddress;
  @override
  @JsonKey(name: 'orderitems')
  List<OrderitemsInvoice>? get orderitems;
  @override
  @JsonKey(ignore: true)
  _$$_OrderInvoiceModelCopyWith<_$_OrderInvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryAddressInvoice _$DeliveryAddressInvoiceFromJson(
    Map<String, dynamic> json) {
  return _DeliveryAddressInvoice.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAddressInvoice {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_no')
  String? get streetNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'home_no')
  String? get homeNo => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_address')
  String? get fullAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitute')
  double? get latitute => throw _privateConstructorUsedError;
  @JsonKey(name: 'longtitute')
  double? get longtitute => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryAddressInvoiceCopyWith<DeliveryAddressInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressInvoiceCopyWith<$Res> {
  factory $DeliveryAddressInvoiceCopyWith(DeliveryAddressInvoice value,
          $Res Function(DeliveryAddressInvoice) then) =
      _$DeliveryAddressInvoiceCopyWithImpl<$Res, DeliveryAddressInvoice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'street_no') String? streetNo,
      @JsonKey(name: 'home_no') String? homeNo,
      @JsonKey(name: 'full_address') String? fullAddress,
      @JsonKey(name: 'latitute') double? latitute,
      @JsonKey(name: 'longtitute') double? longtitute});
}

/// @nodoc
class _$DeliveryAddressInvoiceCopyWithImpl<$Res,
        $Val extends DeliveryAddressInvoice>
    implements $DeliveryAddressInvoiceCopyWith<$Res> {
  _$DeliveryAddressInvoiceCopyWithImpl(this._value, this._then);

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
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryAddressInvoiceCopyWith<$Res>
    implements $DeliveryAddressInvoiceCopyWith<$Res> {
  factory _$$_DeliveryAddressInvoiceCopyWith(_$_DeliveryAddressInvoice value,
          $Res Function(_$_DeliveryAddressInvoice) then) =
      __$$_DeliveryAddressInvoiceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'street_no') String? streetNo,
      @JsonKey(name: 'home_no') String? homeNo,
      @JsonKey(name: 'full_address') String? fullAddress,
      @JsonKey(name: 'latitute') double? latitute,
      @JsonKey(name: 'longtitute') double? longtitute});
}

/// @nodoc
class __$$_DeliveryAddressInvoiceCopyWithImpl<$Res>
    extends _$DeliveryAddressInvoiceCopyWithImpl<$Res,
        _$_DeliveryAddressInvoice>
    implements _$$_DeliveryAddressInvoiceCopyWith<$Res> {
  __$$_DeliveryAddressInvoiceCopyWithImpl(_$_DeliveryAddressInvoice _value,
      $Res Function(_$_DeliveryAddressInvoice) _then)
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
    return _then(_$_DeliveryAddressInvoice(
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
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryAddressInvoice implements _DeliveryAddressInvoice {
  _$_DeliveryAddressInvoice(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'street_no') this.streetNo,
      @JsonKey(name: 'home_no') this.homeNo,
      @JsonKey(name: 'full_address') this.fullAddress,
      @JsonKey(name: 'latitute') this.latitute,
      @JsonKey(name: 'longtitute') this.longtitute});

  factory _$_DeliveryAddressInvoice.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryAddressInvoiceFromJson(json);

  @override
  @JsonKey(name: 'id')
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
  @JsonKey(name: 'latitute')
  final double? latitute;
  @override
  @JsonKey(name: 'longtitute')
  final double? longtitute;

  @override
  String toString() {
    return 'DeliveryAddressInvoice(id: $id, streetNo: $streetNo, homeNo: $homeNo, fullAddress: $fullAddress, latitute: $latitute, longtitute: $longtitute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryAddressInvoice &&
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
  _$$_DeliveryAddressInvoiceCopyWith<_$_DeliveryAddressInvoice> get copyWith =>
      __$$_DeliveryAddressInvoiceCopyWithImpl<_$_DeliveryAddressInvoice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryAddressInvoiceToJson(
      this,
    );
  }
}

abstract class _DeliveryAddressInvoice implements DeliveryAddressInvoice {
  factory _DeliveryAddressInvoice(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'street_no') final String? streetNo,
          @JsonKey(name: 'home_no') final String? homeNo,
          @JsonKey(name: 'full_address') final String? fullAddress,
          @JsonKey(name: 'latitute') final double? latitute,
          @JsonKey(name: 'longtitute') final double? longtitute}) =
      _$_DeliveryAddressInvoice;

  factory _DeliveryAddressInvoice.fromJson(Map<String, dynamic> json) =
      _$_DeliveryAddressInvoice.fromJson;

  @override
  @JsonKey(name: 'id')
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
  @JsonKey(name: 'latitute')
  double? get latitute;
  @override
  @JsonKey(name: 'longtitute')
  double? get longtitute;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryAddressInvoiceCopyWith<_$_DeliveryAddressInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

VariantInvoice _$VariantInvoiceFromJson(Map<String, dynamic> json) {
  return _$Variant.fromJson(json);
}

/// @nodoc
mixin _$VariantInvoice {
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
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantInvoiceCopyWith<VariantInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantInvoiceCopyWith<$Res> {
  factory $VariantInvoiceCopyWith(
          VariantInvoice value, $Res Function(VariantInvoice) then) =
      _$VariantInvoiceCopyWithImpl<$Res, VariantInvoice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'product_id') int? productId});
}

/// @nodoc
class _$VariantInvoiceCopyWithImpl<$Res, $Val extends VariantInvoice>
    implements $VariantInvoiceCopyWith<$Res> {
  _$VariantInvoiceCopyWithImpl(this._value, this._then);

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
abstract class _$$_$VariantCopyWith<$Res>
    implements $VariantInvoiceCopyWith<$Res> {
  factory _$$_$VariantCopyWith(
          _$_$Variant value, $Res Function(_$_$Variant) then) =
      __$$_$VariantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'value') String? value,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'product_id') int? productId});
}

/// @nodoc
class __$$_$VariantCopyWithImpl<$Res>
    extends _$VariantInvoiceCopyWithImpl<$Res, _$_$Variant>
    implements _$$_$VariantCopyWith<$Res> {
  __$$_$VariantCopyWithImpl(
      _$_$Variant _value, $Res Function(_$_$Variant) _then)
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
    return _then(_$_$Variant(
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
class _$_$Variant implements _$Variant {
  _$_$Variant(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'value') this.value,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'product_id') this.productId});

  factory _$_$Variant.fromJson(Map<String, dynamic> json) =>
      _$$_$VariantFromJson(json);

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
  @override
  @JsonKey(name: 'product_id')
  final int? productId;

  @override
  String toString() {
    return 'VariantInvoice(id: $id, name: $name, value: $value, productName: $productName, imageUrl: $imageUrl, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$Variant &&
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
  _$$_$VariantCopyWith<_$_$Variant> get copyWith =>
      __$$_$VariantCopyWithImpl<_$_$Variant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_$VariantToJson(
      this,
    );
  }
}

abstract class _$Variant implements VariantInvoice {
  factory _$Variant(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'value') final String? value,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'product_id') final int? productId}) = _$_$Variant;

  factory _$Variant.fromJson(Map<String, dynamic> json) = _$_$Variant.fromJson;

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
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(ignore: true)
  _$$_$VariantCopyWith<_$_$Variant> get copyWith =>
      throw _privateConstructorUsedError;
}

SizeInvoice _$SizeInvoiceFromJson(Map<String, dynamic> json) {
  return _$Size.fromJson(json);
}

/// @nodoc
mixin _$SizeInvoice {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'size_text')
  String? get sizeText => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SizeInvoiceCopyWith<SizeInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SizeInvoiceCopyWith<$Res> {
  factory $SizeInvoiceCopyWith(
          SizeInvoice value, $Res Function(SizeInvoice) then) =
      _$SizeInvoiceCopyWithImpl<$Res, SizeInvoice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'size_text') String? sizeText});
}

/// @nodoc
class _$SizeInvoiceCopyWithImpl<$Res, $Val extends SizeInvoice>
    implements $SizeInvoiceCopyWith<$Res> {
  _$SizeInvoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sizeText = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_$SizeCopyWith<$Res> implements $SizeInvoiceCopyWith<$Res> {
  factory _$$_$SizeCopyWith(_$_$Size value, $Res Function(_$_$Size) then) =
      __$$_$SizeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'size_text') String? sizeText});
}

/// @nodoc
class __$$_$SizeCopyWithImpl<$Res>
    extends _$SizeInvoiceCopyWithImpl<$Res, _$_$Size>
    implements _$$_$SizeCopyWith<$Res> {
  __$$_$SizeCopyWithImpl(_$_$Size _value, $Res Function(_$_$Size) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sizeText = freezed,
  }) {
    return _then(_$_$Size(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      sizeText: freezed == sizeText
          ? _value.sizeText
          : sizeText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Size implements _$Size {
  _$_$Size(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'size_text') this.sizeText});

  factory _$_$Size.fromJson(Map<String, dynamic> json) =>
      _$$_$SizeFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'size_text')
  final String? sizeText;

  @override
  String toString() {
    return 'SizeInvoice(id: $id, sizeText: $sizeText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$Size &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sizeText, sizeText) ||
                other.sizeText == sizeText));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sizeText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$SizeCopyWith<_$_$Size> get copyWith =>
      __$$_$SizeCopyWithImpl<_$_$Size>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_$SizeToJson(
      this,
    );
  }
}

abstract class _$Size implements SizeInvoice {
  factory _$Size(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'size_text') final String? sizeText}) = _$_$Size;

  factory _$Size.fromJson(Map<String, dynamic> json) = _$_$Size.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'size_text')
  String? get sizeText;
  @override
  @JsonKey(ignore: true)
  _$$_$SizeCopyWith<_$_$Size> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderitemsInvoice _$OrderitemsInvoiceFromJson(Map<String, dynamic> json) {
  return _$Orderitems.fromJson(json);
}

/// @nodoc
mixin _$OrderitemsInvoice {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  double? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'variant')
  VariantInvoice? get variant => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  SizeInvoice? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderitemsInvoiceCopyWith<OrderitemsInvoice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderitemsInvoiceCopyWith<$Res> {
  factory $OrderitemsInvoiceCopyWith(
          OrderitemsInvoice value, $Res Function(OrderitemsInvoice) then) =
      _$OrderitemsInvoiceCopyWithImpl<$Res, OrderitemsInvoice>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'total_price') double? totalPrice,
      @JsonKey(name: 'variant') VariantInvoice? variant,
      @JsonKey(name: 'size') SizeInvoice? size});

  $VariantInvoiceCopyWith<$Res>? get variant;
  $SizeInvoiceCopyWith<$Res>? get size;
}

/// @nodoc
class _$OrderitemsInvoiceCopyWithImpl<$Res, $Val extends OrderitemsInvoice>
    implements $OrderitemsInvoiceCopyWith<$Res> {
  _$OrderitemsInvoiceCopyWithImpl(this._value, this._then);

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
    Object? totalPrice = freezed,
    Object? variant = freezed,
    Object? size = freezed,
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
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantInvoice?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SizeInvoice?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VariantInvoiceCopyWith<$Res>? get variant {
    if (_value.variant == null) {
      return null;
    }

    return $VariantInvoiceCopyWith<$Res>(_value.variant!, (value) {
      return _then(_value.copyWith(variant: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SizeInvoiceCopyWith<$Res>? get size {
    if (_value.size == null) {
      return null;
    }

    return $SizeInvoiceCopyWith<$Res>(_value.size!, (value) {
      return _then(_value.copyWith(size: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_$OrderitemsCopyWith<$Res>
    implements $OrderitemsInvoiceCopyWith<$Res> {
  factory _$$_$OrderitemsCopyWith(
          _$_$Orderitems value, $Res Function(_$_$Orderitems) then) =
      __$$_$OrderitemsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'quantity') int? quantity,
      @JsonKey(name: 'price') double? price,
      @JsonKey(name: 'total_price') double? totalPrice,
      @JsonKey(name: 'variant') VariantInvoice? variant,
      @JsonKey(name: 'size') SizeInvoice? size});

  @override
  $VariantInvoiceCopyWith<$Res>? get variant;
  @override
  $SizeInvoiceCopyWith<$Res>? get size;
}

/// @nodoc
class __$$_$OrderitemsCopyWithImpl<$Res>
    extends _$OrderitemsInvoiceCopyWithImpl<$Res, _$_$Orderitems>
    implements _$$_$OrderitemsCopyWith<$Res> {
  __$$_$OrderitemsCopyWithImpl(
      _$_$Orderitems _value, $Res Function(_$_$Orderitems) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? quantity = freezed,
    Object? price = freezed,
    Object? totalPrice = freezed,
    Object? variant = freezed,
    Object? size = freezed,
  }) {
    return _then(_$_$Orderitems(
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
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      variant: freezed == variant
          ? _value.variant
          : variant // ignore: cast_nullable_to_non_nullable
              as VariantInvoice?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as SizeInvoice?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_$Orderitems implements _$Orderitems {
  _$_$Orderitems(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'total_price') this.totalPrice,
      @JsonKey(name: 'variant') this.variant,
      @JsonKey(name: 'size') this.size});

  factory _$_$Orderitems.fromJson(Map<String, dynamic> json) =>
      _$$_$OrderitemsFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'quantity')
  final int? quantity;
  @override
  @JsonKey(name: 'price')
  final double? price;
  @override
  @JsonKey(name: 'total_price')
  final double? totalPrice;
  @override
  @JsonKey(name: 'variant')
  final VariantInvoice? variant;
  @override
  @JsonKey(name: 'size')
  final SizeInvoice? size;

  @override
  String toString() {
    return 'OrderitemsInvoice(id: $id, quantity: $quantity, price: $price, totalPrice: $totalPrice, variant: $variant, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$Orderitems &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.variant, variant) || other.variant == variant) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, quantity, price, totalPrice, variant, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrderitemsCopyWith<_$_$Orderitems> get copyWith =>
      __$$_$OrderitemsCopyWithImpl<_$_$Orderitems>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_$OrderitemsToJson(
      this,
    );
  }
}

abstract class _$Orderitems implements OrderitemsInvoice {
  factory _$Orderitems(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'quantity') final int? quantity,
      @JsonKey(name: 'price') final double? price,
      @JsonKey(name: 'total_price') final double? totalPrice,
      @JsonKey(name: 'variant') final VariantInvoice? variant,
      @JsonKey(name: 'size') final SizeInvoice? size}) = _$_$Orderitems;

  factory _$Orderitems.fromJson(Map<String, dynamic> json) =
      _$_$Orderitems.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'quantity')
  int? get quantity;
  @override
  @JsonKey(name: 'price')
  double? get price;
  @override
  @JsonKey(name: 'total_price')
  double? get totalPrice;
  @override
  @JsonKey(name: 'variant')
  VariantInvoice? get variant;
  @override
  @JsonKey(name: 'size')
  SizeInvoice? get size;
  @override
  @JsonKey(ignore: true)
  _$$_$OrderitemsCopyWith<_$_$Orderitems> get copyWith =>
      throw _privateConstructorUsedError;
}
