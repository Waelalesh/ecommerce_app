import 'package:json_annotation/json_annotation.dart';
part 'check_email_response.g.dart';

@JsonSerializable()
class CheckEmailResponse {
  String? message;
  bool? status;

  CheckEmailResponse({this.message, this.status});

  factory CheckEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailResponseFromJson(json);
}
