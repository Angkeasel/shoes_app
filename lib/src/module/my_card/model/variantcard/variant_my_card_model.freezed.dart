// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant_my_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VaiantMyCardModel _$VaiantMyCardModelFromJson(Map<String, dynamic> json) {
  return _VaiantMyCardModel.fromJson(json);
}

/// @nodoc
mixin _$VaiantMyCardModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  List<String>? get colors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VaiantMyCardModelCopyWith<VaiantMyCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VaiantMyCardModelCopyWith<$Res> {
  factory $VaiantMyCardModelCopyWith(
          VaiantMyCardModel value, $Res Function(VaiantMyCardModel) then) =
      _$VaiantMyCardModelCopyWithImpl<$Res, VaiantMyCardModel>;
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
class _$VaiantMyCardModelCopyWithImpl<$Res, $Val extends VaiantMyCardModel>
    implements $VaiantMyCardModelCopyWith<$Res> {
  _$VaiantMyCardModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_VaiantMyCardModelCopyWith<$Res>
    implements $VaiantMyCardModelCopyWith<$Res> {
  factory _$$_VaiantMyCardModelCopyWith(_$_VaiantMyCardModel value,
          $Res Function(_$_VaiantMyCardModel) then) =
      __$$_VaiantMyCardModelCopyWithImpl<$Res>;
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
class __$$_VaiantMyCardModelCopyWithImpl<$Res>
    extends _$VaiantMyCardModelCopyWithImpl<$Res, _$_VaiantMyCardModel>
    implements _$$_VaiantMyCardModelCopyWith<$Res> {
  __$$_VaiantMyCardModelCopyWithImpl(
      _$_VaiantMyCardModel _value, $Res Function(_$_VaiantMyCardModel) _then)
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
    return _then(_$_VaiantMyCardModel(
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
class _$_VaiantMyCardModel implements _VaiantMyCardModel {
  _$_VaiantMyCardModel(
      {this.id,
      this.name,
      @JsonKey(name: 'image_url') this.imageUrl,
      this.price,
      this.quantity,
      final List<String>? colors})
      : _colors = colors;

  factory _$_VaiantMyCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_VaiantMyCardModelFromJson(json);

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
    return 'VaiantMyCardModel(id: $id, name: $name, imageUrl: $imageUrl, price: $price, quantity: $quantity, colors: $colors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VaiantMyCardModel &&
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
  _$$_VaiantMyCardModelCopyWith<_$_VaiantMyCardModel> get copyWith =>
      __$$_VaiantMyCardModelCopyWithImpl<_$_VaiantMyCardModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VaiantMyCardModelToJson(
      this,
    );
  }
}

abstract class _VaiantMyCardModel implements VaiantMyCardModel {
  factory _VaiantMyCardModel(
      {final int? id,
      final String? name,
      @JsonKey(name: 'image_url') final String? imageUrl,
      final double? price,
      final int? quantity,
      final List<String>? colors}) = _$_VaiantMyCardModel;

  factory _VaiantMyCardModel.fromJson(Map<String, dynamic> json) =
      _$_VaiantMyCardModel.fromJson;

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
  _$$_VaiantMyCardModelCopyWith<_$_VaiantMyCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
