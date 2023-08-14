import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_models.freezed.dart';
part 'address_models.g.dart';

@freezed
class AddressModels with _$AddressModels {
  factory AddressModels({
    final int? id,
    @JsonKey(name: 'first_name') final String? firstName,
    @JsonKey(name: 'last_name') final String? lastName,
    @JsonKey(name: 'phone') final String? phone,
    @JsonKey(name: 'street_no') final String? streetNo,
    @JsonKey(name: 'home_no') final String? homeNo,
    @JsonKey(name: 'full_address') final String? fullAddress,
    @JsonKey(name: 'is_default') final bool? isDefault,
    final double? latitute,
    final double? longtitute,
    final String? label,
    final String? createdAt,
  }) = _AddressModels;

  factory AddressModels.fromJson(Map<String, dynamic> json) =>
      _$AddressModelsFromJson(json);
}
