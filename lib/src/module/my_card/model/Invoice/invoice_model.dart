// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_model.freezed.dart';
part 'invoice_model.g.dart';

@freezed
class InvoiceModel with _$InvoiceModel {
  factory InvoiceModel(
      {final int? id,
      @JsonKey(name: 'total_amount') double? totalAmount,
      final String? status,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt}) = _InvoiceModel;

  factory InvoiceModel.fromJson(Map<String, dynamic> json) =>
      _$InvoiceModelFromJson(json);
}
