// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpRequestBodyForSignUp _$OtpRequestBodyForSignUpFromJson(
        Map<String, dynamic> json) =>
    OtpRequestBodyForSignUp(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      password: json['password'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$OtpRequestBodyForSignUpToJson(
        OtpRequestBodyForSignUp instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'password': instance.password,
      'otp': instance.otp,
    };
