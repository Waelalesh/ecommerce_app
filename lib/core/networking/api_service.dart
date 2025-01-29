import 'package:ecommerce_app/features/check_email/data/models/check_email_response.dart';
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
  @POST(ApiConstants.signup)
  Future<CheckEmailResponse> checkEmail(@Body() String email);
}
