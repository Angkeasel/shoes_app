import 'package:freezed_annotation/freezed_annotation.dart';

part 'catagary_model.freezed.dart';
part 'catagary_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {

  factory CategoryModel({
    final int ? id,
    final String ? name,
    final String ? icon,
    
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}