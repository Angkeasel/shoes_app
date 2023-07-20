import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_picture_model.freezed.dart';
part 'profile_picture_model.g.dart';

@freezed
class ProfilePictureModel with _$ProfilePictureModel {
  factory ProfilePictureModel({
    final int? id,
    @JsonKey(name: "image_url") final String? imageUrl,
    @JsonKey(name: "is_latest") final bool? isLatest,
  }) = _ProfilePictureModel;

  factory ProfilePictureModel.fromJson(Map<String, dynamic> json) =>
      _$ProfilePictureModelFromJson(json);
}
