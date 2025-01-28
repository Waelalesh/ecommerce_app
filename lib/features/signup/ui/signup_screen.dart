// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_app/imports.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                        text: "Sign Up",
                        textStyle:
                            TextStyles.font28eggplantPurpleBoldPlayfairDisplay),
                    verticalSpace(30),
                    const SignupUsernameEmailPhoneAndPassword(),
                    verticalSpace(20),
                    AnimatedAppButton(
                        milliSecondsDuration: 1900,
                        onPressed: () async {
                          showSuccessSnackbar(context,
                              message: "Signup Successful", title: "Success");
                          await Future.delayed(const Duration(seconds: 4));
                          showDialog(
                              context: context,
                              builder: (builder) => Center(
                                  child: Assets.lottieAnimation.loadingTelegram
                                      .lottie()));
                          Future.delayed(const Duration(seconds: 4))
                              .then((onValue) {
                            context.pushNamed(Routes.otpScreen,
                                arguments: Constants.signup);
                          });
                        },
                        color: ColorsManager.eggplantPurple,
                        height: 48,
                        text: "SignUp",
                        textStyle: TextStyles.font15WhiteMediumPlayfairDisplay),
                    verticalSpace(20),
                    AnimatedAppTextButton(
                        text: "Login",
                        textStyle: TextStyles
                            .font13SemiTransparentDarkPurpleSemiBoldPlayfairDisplay,
                        milliSecondsDuration: 2000,
                        onPressed: () {
                          context.pop();
                        }),
                  ],
                ),
              ),
              const SignupBlocListener()
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
