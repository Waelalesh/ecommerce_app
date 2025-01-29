import 'package:ecommerce_app/features/otp/data/models/otp_response.dart';
import 'package:ecommerce_app/imports.dart';

class OtpRepo {
  final ApiService _apiService;

  OtpRepo(this._apiService);

  Future<ApiResault<OtpResponse>> verifyTheCode(String number) async {
    try {
      final response = await _apiService.verifyCode(number);
      return ApiResault.success(response);
    } catch (errro) {
      return ApiResault.failure(ApiErrorHandler.handle(errro));
    }
  }
}
