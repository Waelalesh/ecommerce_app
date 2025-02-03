import 'package:ecommerce_app/imports.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResault<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      
      return ApiResault.success(response);
    } catch (errro) {
      return ApiResault.failure(ApiErrorHandler.handle(errro));
    }
  }
}
