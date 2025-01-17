import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_response/user_response.model.dart';

part 'login_response.model.freezed.dart';
part 'login_response.model.g.dart';

@freezed
class LoginResponseModel with _$LoginResponseModel {
  const factory LoginResponseModel({
    required LoginData data,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
}

@freezed
class LoginData with _$LoginData {
  const factory LoginData({
    required String token,
    @JsonKey(name: 'two_factor') required bool isTwoFactorEnabled,
    required UserModel user,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}
