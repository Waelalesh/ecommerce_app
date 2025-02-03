import 'package:json_annotation/json_annotation.dart';
part 'reset_password_request_body.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ResetPasswordRequestBody {
  final String? email;
  final String? newPassword;
  final String? confirmPassword;

  ResetPasswordRequestBody({
    this.confirmPassword,
    this.email,
    this.newPassword,
  });

  Map<String, dynamic> toJson() => _$ResetPasswordRequestBodyToJson(this);
  // factory ResetPasswordRequestBody.fromJson(Map<String, dynamic> json) =>
  //     _$ResetPasswordRequestBodyFromJson(json);
}
