import 'package:json_annotation/json_annotation.dart';
part 'otp_response.g.dart';

@JsonSerializable()
class OtpResponse {
  String? message;
  bool? status;
  String? email;

  OtpResponse({this.message, this.status, this.email});

  factory OtpResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpResponseFromJson(json);
}
