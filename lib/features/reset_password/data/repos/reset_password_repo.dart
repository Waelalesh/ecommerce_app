import "package:ecommerce_app/features/reset_password/data/models/reset_password_request_body.dart";
import "package:ecommerce_app/features/reset_password/data/models/reset_password_response.dart";
import "package:ecommerce_app/imports.dart";

class ResetPasswordRepo {
  final ApiService apiService;
  ResetPasswordRepo(this.apiService);
  Future<ApiResault<ResetPasswordResponse>> resetPassword(
      ResetPasswordRequestBody resetPasswordRequestBody) async {
    try {
      final response = await apiService.resetPassword(resetPasswordRequestBody);
      return ApiResault.success(response);
    } catch (error) {
      return ApiResault.failure(ApiErrorHandler.handle(error));
    }
  }
}
