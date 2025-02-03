import 'package:ecommerce_app/features/reset_password/logic/reset_password_cubit.dart';
import 'package:ecommerce_app/features/reset_password/logic/reset_password_state.dart';
import 'package:ecommerce_app/imports.dart';

class ResetPasswordBlocListner extends StatelessWidget {
  const ResetPasswordBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          current is ResetPasswordLoading ||
          current is ResetPasswordSuccess ||
          current is ResetPasswordError,
      listener: (context, state) {
        state.whenOrNull(
          resetPasswordLoading: () {
            showDialog(
                context: context,
                builder: (builder) => Center(
                    child: Assets.lottieAnimation.loadingTelegraph.lottie()));
          },
          resetPasswordSuccess: (resetPasswordResponse) async {
            context.pop();

            showSuccessSnackbar(context,
                title: "Reset Password Success",
                message:
                    resetPasswordResponse.message ?? "Error To Get Message");
            await Future.delayed(const Duration(seconds: 3));
            if (context.mounted) {
              context.pushReplacementNamed(Routes.logInScreen);
            }
          },
          resetPasswordError: (apiErrorModel) {
            context.pop();
            showErrorSnackbar(context,
                title: "ResetPassword Error",
                message: apiErrorModel.getAllErrorMessages());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
