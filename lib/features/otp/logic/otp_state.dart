import 'package:ecommerce_app/features/otp/data/models/otp_response.dart';
import 'package:ecommerce_app/imports.dart';
part 'otp_state.freezed.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState.initial() = _Initial;

  const factory OtpState.otpLoading() = OtpLoading;
  const factory OtpState.otpSuccess(OtpResponse data) = OtpSuccess;
  const factory OtpState.otpError(ApiErrorModel apiErrorModel) = OtpError;
}
