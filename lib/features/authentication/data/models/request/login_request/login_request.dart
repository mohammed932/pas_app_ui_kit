import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginRequest {
  final String username;
  final String password;

  LoginRequest({
    required this.username,
    required this.password,
  });
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = _$LoginRequestToJson(this);
    return data..removeWhere((key, value) => value == null);
  }
}
