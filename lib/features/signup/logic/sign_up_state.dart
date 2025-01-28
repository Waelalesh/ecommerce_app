import 'package:ecommerce_app/imports.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.signupLoading() = SignupLoading;
  const factory SignupState.signupSuccess(SignupResponse data) = SignupSuccess;
  const factory SignupState.signupError(ApiErrorModel apiErrorModel) =
      SignupError;
}
