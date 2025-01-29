// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_email_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckEmailResponse _$CheckEmailResponseFromJson(Map<String, dynamic> json) =>
    CheckEmailResponse(
      message: json['message'] as String?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$CheckEmailResponseToJson(CheckEmailResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
    };
