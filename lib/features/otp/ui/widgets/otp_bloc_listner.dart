import 'package:ecommerce_app/features/otp/logic/otp_cubit.dart';
import 'package:ecommerce_app/features/otp/logic/otp_state.dart';
import 'package:ecommerce_app/imports.dart';

class OtpBlocListner extends StatelessWidget {
  const OtpBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OtpCubit, OtpState>(
      listenWhen: (previous, current) =>
          current is OtpLoading || current is OtpSuccess || current is OtpError,
      listener: (context, state) {
        state.whenOrNull(
          otpLoading: () {
            showDialog(
                context: context,
                builder: (builder) => Center(
                    child: Assets.lottieAnimation.loadingRocket.lottie()));
          },
          otpSuccess: (otpResponse) {
            context.pop();
            Future.delayed(const Duration(seconds: 3));
            showSuccessSnackbar(context,
                title: "Verification Success",
                message: otpResponse.message ?? "Error To Get Message");

            /// Here we Check if the argument we passed in prvious screen is a [sign up] route to navigate to [login screen] to login
            /// if not we navigate to [reset password screen]
            if (ModalRoute.of(context)!.settings.arguments ==
                Routes.signUpScreen) {
              context.pushNamedAndRemoveUntil(Routes.logInScreen,
                  predicate: (predicate) => false);
            } else {
              context.pushReplacementNamed(Routes.resetPasswordScreen);
            }
          },
          otpError: (apiErrorModel) {
            showErrorSnackbar(context,
                title: "Verification Error",
                message: apiErrorModel.getAllErrorMessages());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
