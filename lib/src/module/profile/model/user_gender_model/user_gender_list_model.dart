import 'package:allpay/src/module/profile/model/user_gender_model/user_gender_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_gender_list_model.freezed.dart';
part 'user_gender_list_model.g.dart';

@freezed
class UserGenderListModel with _$UserGenderListModel {
  factory UserGenderListModel({
    final List<UserGenderModel>? genderList,
  }) = _UserGenderListModel;

  factory UserGenderListModel.fromJson(Map<String, dynamic> json) =>
      _$UserGenderListModelFromJson(json);
}
