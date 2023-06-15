// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceModel _$InvoiceModelFromJson(Map<String, dynamic> json) {
  return _InvoiceModel.fromJson(json);
}

/// @nodoc
mixin _$InvoiceModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  double? get totalAmount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceModelCopyWith<InvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceModelCopyWith<$Res> {
  factory $InvoiceModelCopyWith(
          InvoiceModel value, $Res Function(InvoiceModel) then) =
      _$InvoiceModelCopyWithImpl<$Res, InvoiceModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'total_amount') double? totalAmount,
      String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$InvoiceModelCopyWithImpl<$Res, $Val extends InvoiceModel>
    implements $InvoiceModelCopyWith<$Res> {
  _$InvoiceModelCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvoiceModelCopyWith<$Res>
    implements $InvoiceModelCopyWith<$Res> {
  factory _$$_InvoiceModelCopyWith(
          _$_InvoiceModel value, $Res Function(_$_InvoiceModel) then) =
      __$$_InvoiceModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'total_amount') double? totalAmount,
      String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$_InvoiceModelCopyWithImpl<$Res>
    extends _$InvoiceModelCopyWithImpl<$Res, _$_InvoiceModel>
    implements _$$_InvoiceModelCopyWith<$Res> {
  __$$_InvoiceModelCopyWithImpl(
      _$_InvoiceModel _value, $Res Function(_$_InvoiceModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? totalAmount = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_InvoiceModel(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceModel implements _InvoiceModel {
  _$_InvoiceModel(
      {this.id,
      @JsonKey(name: 'total_amount') this.totalAmount,
      this.status,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$_InvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceModelFromJson(json);

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
  String toString() {
    return 'InvoiceModel(id: $id, totalAmount: $totalAmount, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvoiceModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, totalAmount, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvoiceModelCopyWith<_$_InvoiceModel> get copyWith =>
      __$$_InvoiceModelCopyWithImpl<_$_InvoiceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceModelToJson(
      this,
    );
  }
}

abstract class _InvoiceModel implements InvoiceModel {
  factory _InvoiceModel(
      {final int? id,
      @JsonKey(name: 'total_amount') final double? totalAmount,
      final String? status,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$_InvoiceModel;

  factory _InvoiceModel.fromJson(Map<String, dynamic> json) =
      _$_InvoiceModel.fromJson;

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
  @JsonKey(ignore: true)
  _$$_InvoiceModelCopyWith<_$_InvoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
