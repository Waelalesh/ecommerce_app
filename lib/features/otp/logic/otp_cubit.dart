import 'package:ecommerce_app/features/otp/data/models/otp_request_body.dart';
import 'package:ecommerce_app/features/otp/data/repos/otp_repo.dart';
import 'package:ecommerce_app/features/otp/logic/otp_state.dart';
import 'package:ecommerce_app/imports.dart';

class OtpCubit extends Cubit<OtpState> {
  final OtpRepo _otpRepo;
  OtpCubit(this._otpRepo) : super(const OtpState.initial());

  void emitVerifiCodeForRegisterStates(
      OtpRequestBodyForSignUp otpRequestBody) async {
    emit(const OtpState.otpLoading());
    final response = await _otpRepo.verifyCodeForRegister(otpRequestBody);
    response.when(success: (otpResponse) {
      emit(OtpState.otpSuccess(otpResponse));
    }, failure: (apiErrorModel) {
      emit(OtpState.otpError(apiErrorModel));
    });
  }

  void emitVerifiCodeForResetPasswordStates(
      {required String email, required String otp}) async {
    emit(const OtpState.otpLoading());
    final response =
        await _otpRepo.verifyCodeForResetPassword({"email": email, "otp": otp});
    response.when(success: (otpResponse) {
      emit(OtpState.otpSuccess(otpResponse));
    }, failure: (apiErrorModel) {
      emit(OtpState.otpError(apiErrorModel));
    });
  }
}
