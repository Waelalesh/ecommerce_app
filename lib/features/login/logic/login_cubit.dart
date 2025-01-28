
import 'login_state.dart';
import 'package:ecommerce_app/imports.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text.trim()));
    response.when(success: (loginResponse) {
      saveUserToken(loginResponse.token ?? "");
      emit(LoginState.loginSuccess(loginResponse));
    }, failure: (ApiErrorModel apiErrorModel) {
      emit(LoginState.loginError(apiErrorModel));
    });
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenInToHeaderAfterLogin(token);
  }
}
