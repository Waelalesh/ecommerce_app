import 'package:ecommerce_app/features/check_email/data/models/check_email_response.dart';
import 'package:ecommerce_app/features/otp/data/models/otp_request_body.dart';
import 'package:ecommerce_app/features/otp/data/models/otp_response.dart';
import 'package:ecommerce_app/features/reset_password/data/models/reset_password_request_body.dart';
import 'package:ecommerce_app/features/reset_password/data/models/reset_password_response.dart';
import 'package:ecommerce_app/imports.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(@Body() SignupRequestBody signupRequestBody);
  @POST(ApiConstants.checkEamil)
  Future<CheckEmailResponse> checkEmail(@Body() Map<String, dynamic> email);
  @POST(ApiConstants.verificationCodeForRegister)
  Future<OtpResponse> verifyCodeForRegister(
      @Body() OtpRequestBodyForSignUp otpRequestBody);
  @POST(ApiConstants.verificationCodeForResetPassword)
  Future<OtpResponse> verifyCodeForResetPassword(
      @Body() Map<String, dynamic> data);
  @POST(ApiConstants.resetPassword)
  Future<ResetPasswordResponse> resetPassword(
      @Body() ResetPasswordRequestBody body);
}
