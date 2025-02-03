import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SignupRequestBody {
  final String? name;
  final String? email;
  final String? phoneNumber;
  final String? password;
  final String? confirmPassword;

  SignupRequestBody({
    this.phoneNumber,
    this.confirmPassword,
    this.name,
    this.email,
    this.password,
  });

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
  factory SignupRequestBody.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestBodyFromJson(json);
}
