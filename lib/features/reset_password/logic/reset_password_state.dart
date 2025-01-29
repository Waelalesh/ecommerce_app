import 'package:ecommerce_app/features/reset_password/data/models/reset_password_response.dart';
import 'package:ecommerce_app/imports.dart';
part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _Initial;
  const factory ResetPasswordState.resetPasswordLoading() =
      ResetPasswordLoading;
  const factory ResetPasswordState.resetPasswordSuccess(
      ResetPasswordResponse data) = ResetPasswordSuccess;
  const factory ResetPasswordState.resetPasswordError(
      ApiErrorModel apiErrorModel) = ResetPasswordError;
}
