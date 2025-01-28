import "package:ecommerce_app/imports.dart";

class LoginRepo {
  final ApiService apiService;
  LoginRepo(this.apiService);
  Future<ApiResault<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResault.success(response);
    } catch (error) {
      return ApiResault.failure(ApiErrorHandler.handle(error));
    }
  }
}
