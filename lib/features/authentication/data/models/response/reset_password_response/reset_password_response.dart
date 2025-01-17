class ResetPasswordResponse {
  final String data;

  ResetPasswordResponse({required this.data});

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) {
    return ResetPasswordResponse(
      data: json['data'] as String,
    );
  }
}
