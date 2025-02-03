// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResetPasswordRequestBody _$ResetPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    ResetPasswordRequestBody(
      confirmPassword: json['confirm_password'] as String?,
      email: json['email'] as String?,
      newPassword: json['new_password'] as String?,
    );

Map<String, dynamic> _$ResetPasswordRequestBodyToJson(
        ResetPasswordRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'new_password': instance.newPassword,
      'confirm_password': instance.confirmPassword,
    };
