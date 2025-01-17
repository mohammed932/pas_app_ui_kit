// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password.request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequest _$ResetPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordRequest(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ResetPasswordRequestToJson(
        ResetPasswordRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
