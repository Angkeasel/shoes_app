import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel({
    final int? id,
    @JsonKey(name: "first_name") final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    final String? email,
    final String? bio,
    final List? profiles,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
