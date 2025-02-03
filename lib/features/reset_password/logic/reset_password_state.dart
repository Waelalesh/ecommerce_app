import 'package:ecommerce_app/features/reset_password/data/models/reset_password_response.dart';
import 'package:ecommerce_app/imports.dart';
part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState<T> with _$ResetPasswordState<T> {
  const factory ResetPasswordState.initial() = _Initial;
  const factory ResetPasswordState.resetPasswordLoading() =
      ResetPasswordLoading;
  const factory ResetPasswordState.resetPasswordSuccess(
      ResetPasswordResponse data) = ResetPasswordSuccess<T>;
  const factory ResetPasswordState.resetPasswordError(
      ApiErrorModel apiErrorModel) = ResetPasswordError;
}
