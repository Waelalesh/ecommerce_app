import 'package:ecommerce_app/features/otp/data/models/otp_request_body.dart';
import 'package:ecommerce_app/features/otp/data/models/otp_response.dart';
import 'package:ecommerce_app/imports.dart';

class OtpRepo {
  final ApiService _apiService;

  OtpRepo(this._apiService);

  Future<ApiResault<OtpResponse>> verifyCodeForRegister(
      OtpRequestBodyForSignUp otpRequestBody) async {
    try {
      final response = await _apiService.verifyCodeForRegister(otpRequestBody);
      return ApiResault.success(response);
    } catch (errro) {
      return ApiResault.failure(ApiErrorHandler.handle(errro));
    }
  }

  Future<ApiResault<OtpResponse>> verifyCodeForResetPassword(
      Map<String, dynamic> data) async {
    try {
      final response = await _apiService.verifyCodeForResetPassword(data);
      return ApiResault.success(response);
    } catch (errro) {
      return ApiResault.failure(ApiErrorHandler.handle(errro));
    }
  }
}
