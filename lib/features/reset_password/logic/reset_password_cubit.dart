import 'package:ecommerce_app/features/reset_password/data/models/reset_password_request_body.dart';
import 'package:ecommerce_app/features/reset_password/data/repos/reset_password_repo.dart';

import 'reset_password_state.dart';
import 'package:ecommerce_app/imports.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final ResetPasswordRepo _resetPasswordRepo;
  ResetPasswordCubit(this._resetPasswordRepo)
      : super(const ResetPasswordState.initial());
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmationPasswordController =
      TextEditingController();
  void emitResetPasswordStates(String email) async {
    emit(const ResetPasswordState.resetPasswordLoading());
    final response = await _resetPasswordRepo.resetPassword(
        ResetPasswordRequestBody(
            confirmPassword: confirmationPasswordController.text,
            email: email,
            newPassword: passwordController.text));
    response.when(success: (resetPasswordResponse) {
      emit(ResetPasswordState.resetPasswordSuccess(resetPasswordResponse));
    }, failure: (ApiErrorModel apiErrorModel) {
      emit(ResetPasswordState.resetPasswordError(apiErrorModel));
    });
  }
}
