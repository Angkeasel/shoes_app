import 'package:freezed_annotation/freezed_annotation.dart';

part 'slide_model.freezed.dart';
part 'slide_model.g.dart';

@freezed
class SlideModel with _$SlideModel {
  factory SlideModel(
      {final int? id,
      final String? title,
      final String? description,
      final String? imageUrl}) = _SlideModel;

  factory SlideModel.fromJson(Map<String, dynamic> json) =>
      _$SlideModelFromJson(json);
}
