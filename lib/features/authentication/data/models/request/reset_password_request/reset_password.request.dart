import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_password.request.g.dart';

@JsonSerializable(explicitToJson: true)
class ResetPasswordRequest {
  final String username;
  final String password;

  ResetPasswordRequest({
    required this.username,
    required this.password,
  });
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = _$ResetPasswordRequestToJson(this);
    return data..removeWhere((key, value) => value == null);
  }
}
