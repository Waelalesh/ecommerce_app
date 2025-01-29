import 'package:ecommerce_app/features/otp/data/repos/otp_repo.dart';
import 'package:ecommerce_app/features/otp/logic/otp_state.dart';
import 'package:ecommerce_app/imports.dart';

class OtpCubit extends Cubit<OtpState> {
  final OtpRepo _otpRepo;
  OtpCubit(this._otpRepo) : super(const OtpState.initial());

  void emitVerifiCodeStates(String number) async {
    emit(const OtpState.otpLoading());
    final response = await _otpRepo.verifyTheCode(number);
    response.when(success: (otpResponse) {
      emit(OtpState.otpSuccess(otpResponse));
    }, failure: (apiErrorModel) {
      emit(OtpState.otpError(apiErrorModel));
    });
  }
}
