import 'package:ecommerce_app/features/otp/data/models/argument_otp_model.dart';
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
          otpSuccess: (otpResponse) async {
            context.pop();
            showSuccessSnackbar(context,
                title: "Verification Success",
                message: otpResponse.message ?? "Error To Get Message");

            /// Here we Check if the argument we passed in prvious screen is a [sign up] route to navigate to [login screen] to login
            /// if not we navigate to [reset password screen]
            await Future.delayed(const Duration(seconds: 3));
            if (context.mounted) {
              final ArgumentOtpModel argumentOtpModel = ModalRoute.of(context)!
                  .settings
                  .arguments as ArgumentOtpModel;
              if (argumentOtpModel.routeName == Routes.signUpScreen) {
                context.pushNamedAndRemoveUntil(Routes.logInScreen,
                    predicate: (predicate) => false);
              } else {
                ArgumentOtpModel<String> data = ModalRoute.of(context)!
                    .settings
                    .arguments as ArgumentOtpModel<String>;
                context.pushReplacementNamed(Routes.resetPasswordScreen,
                    arguments: data.data ?? "Email Empty");
              }
            }
          },
          otpError: (apiErrorModel) {
            context.pop();
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
