import 'package:ecommerce_app/imports.dart';
part 'otp_request_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OtpRequestBodyForSignUp {
  @JsonKey()
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? password;
  String? otp;
  OtpRequestBodyForSignUp({
    this.name,
    this.email,
    this.phoneNumber,
    this.password,
    this.otp,
  });

  Map<String, dynamic> toJson() => _$OtpRequestBodyForSignUpToJson(this);
}
