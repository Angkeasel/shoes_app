// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'big_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BigProductModel _$BigProductModelFromJson(Map<String, dynamic> json) {
  return _BigProductModel.fromJson(json);
}

/// @nodoc
mixin _$BigProductModel {
  int? get totalItems => throw _privateConstructorUsedError;
  List<ProductModel>? get data => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BigProductModelCopyWith<BigProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BigProductModelCopyWith<$Res> {
  factory $BigProductModelCopyWith(
          BigProductModel value, $Res Function(BigProductModel) then) =
      _$BigProductModelCopyWithImpl<$Res, BigProductModel>;
  @useResult
  $Res call(
      {int? totalItems,
      List<ProductModel>? data,
      int? totalPages,
      int? currentPage});
}

/// @nodoc
class _$BigProductModelCopyWithImpl<$Res, $Val extends BigProductModel>
    implements $BigProductModelCopyWith<$Res> {
  _$BigProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? data = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BigProductModelCopyWith<$Res>
    implements $BigProductModelCopyWith<$Res> {
  factory _$$_BigProductModelCopyWith(
          _$_BigProductModel value, $Res Function(_$_BigProductModel) then) =
      __$$_BigProductModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalItems,
      List<ProductModel>? data,
      int? totalPages,
      int? currentPage});
}

/// @nodoc
class __$$_BigProductModelCopyWithImpl<$Res>
    extends _$BigProductModelCopyWithImpl<$Res, _$_BigProductModel>
    implements _$$_BigProductModelCopyWith<$Res> {
  __$$_BigProductModelCopyWithImpl(
      _$_BigProductModel _value, $Res Function(_$_BigProductModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalItems = freezed,
    Object? data = freezed,
    Object? totalPages = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_$_BigProductModel(
      totalItems: freezed == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: freezed == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BigProductModel implements _BigProductModel {
  _$_BigProductModel(
      {this.totalItems,
      final List<ProductModel>? data,
      this.totalPages,
      this.currentPage})
      : _data = data;

  factory _$_BigProductModel.fromJson(Map<String, dynamic> json) =>
      _$$_BigProductModelFromJson(json);

  @override
  final int? totalItems;
  final List<ProductModel>? _data;
  @override
  List<ProductModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalPages;
  @override
  final int? currentPage;

  @override
  String toString() {
    return 'BigProductModel(totalItems: $totalItems, data: $data, totalPages: $totalPages, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BigProductModel &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalItems,
      const DeepCollectionEquality().hash(_data), totalPages, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BigProductModelCopyWith<_$_BigProductModel> get copyWith =>
      __$$_BigProductModelCopyWithImpl<_$_BigProductModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BigProductModelToJson(
      this,
    );
  }
}

abstract class _BigProductModel implements BigProductModel {
  factory _BigProductModel(
      {final int? totalItems,
      final List<ProductModel>? data,
      final int? totalPages,
      final int? currentPage}) = _$_BigProductModel;

  factory _BigProductModel.fromJson(Map<String, dynamic> json) =
      _$_BigProductModel.fromJson;

  @override
  int? get totalItems;
  @override
  List<ProductModel>? get data;
  @override
  int? get totalPages;
  @override
  int? get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_BigProductModelCopyWith<_$_BigProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}
