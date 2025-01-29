// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_app/features/reset_password/logic/reset_password_cubit.dart';
import 'package:ecommerce_app/features/reset_password/ui/widgets/reset_password_bloc_listner.dart';
import 'package:ecommerce_app/imports.dart';

import 'widgets/new_and_confirm_password.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopImages(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 38.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedAppText(
                        milliSecondsDuration: 1500,
                        text: "Reset Password",
                        textStyle:
                            TextStyles.font28eggplantPurpleBoldPlayfairDisplay),
                    verticalSpace(30),
                    const NewAndConfirmPassword(
                      milliSecondsDuration: 1700,
                    ),
                    verticalSpace(20),
                    AnimatedAppButton(
                        milliSecondsDuration: 1900,
                        onPressed: () async {
                          // showErrorSnackbar(context,
                          //     title: "Error",
                          //     message:
                          //         "Error occurred while resetting password. Please try again.");
                          showDialog(
                              context: context,
                              builder: (builder) => Center(
                                  child: Assets.lottieAnimation.loadingTelegraph
                                      .lottie()));
                          await Future.delayed(const Duration(seconds: 4));
                          context.pop();
                          showSuccessSnackbar(context,
                              message: "Reset Password Successful",
                              title: "Success");

                          Future.delayed(const Duration(seconds: 4))
                              .then((onValue) {
                            context.pushNamed(
                              Routes.logInScreen,
                            );
                          });
                        },
                        color: ColorsManager.eggplantPurple,
                        height: 48,
                        text: "Confirm Password",
                        textStyle: TextStyles.font15WhiteMediumPlayfairDisplay),
                    verticalSpace(20),
                  ],
                ),
              ),
              const ResetPasswordBlocListner()
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoResetPassword(BuildContext context) {
    String password =
        context.read<ResetPasswordCubit>().passwordController.text;
    String confirmationPassword =
        context.read<ResetPasswordCubit>().confirmationPasswordController.text;
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate() &&
        password == confirmationPassword) {
      context.read<ResetPasswordCubit>().emitResetPasswordStates();
    }
  }
}
