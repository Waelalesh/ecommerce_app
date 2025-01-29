import 'package:ecommerce_app/features/check_email/data/models/check_email_response.dart';
import 'package:ecommerce_app/imports.dart';
part 'check_email_state.freezed.dart';

@freezed
class CheckEmailState with _$CheckEmailState {
  const factory CheckEmailState.initial() = _Initial;

  const factory CheckEmailState.checkEmailLoading() = CheckEmailLoading;
  const factory CheckEmailState.checkEmailSuccess(CheckEmailResponse data) =
      CheckEmailSuccess;
  const factory CheckEmailState.checkEmailError(ApiErrorModel apiErrorModel) =
      CheckEmailError;
}
