import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    @JsonKey(name: 'phone_number') final String? phoneNumber,
    @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
    @JsonKey(name: 'email') final String? email,
    @JsonKey(name: 'bio') final String? bio,
    @JsonKey(name: 'profiles') final List<Profiles>? profiles,
    @JsonKey(name: 'gender') final dynamic gender,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}

@freezed
class Profiles with _$Profiles {
  factory Profiles({
    @JsonKey(name: 'id') final int? id,
    @JsonKey(name: 'image_url') final String? imageUrl,
    @JsonKey(name: 'is_latest') final bool? isLatest,
  }) = _Profiles;

  factory Profiles.fromJson(Map<String, dynamic> json) =>
      _$ProfilesFromJson(json);
}
