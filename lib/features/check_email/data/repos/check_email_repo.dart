import 'package:ecommerce_app/features/check_email/data/models/check_email_response.dart';
import 'package:ecommerce_app/imports.dart';

class CheckEmailRepo {
  final ApiService _apiService;

  CheckEmailRepo(this._apiService);

  Future<ApiResault<CheckEmailResponse>> checkEmail(
      Map<String, dynamic> email) async {
    try {
      final response = await _apiService.checkEmail(email);
      return ApiResault.success(response);
    } catch (errro) {
      return ApiResault.failure(ApiErrorHandler.handle(errro));
    }
  }
}
