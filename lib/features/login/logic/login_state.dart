import 'package:ecommerce_app/imports.dart';
part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(LoginResponse data) =
      LoginSuccess<T>;
  const factory LoginState.loginError(ApiErrorModel apiErrorModel) = LoginError;
}
