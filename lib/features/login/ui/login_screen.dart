// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_app/imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ExitApp(
      child: Scaffold(
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
                          text: "Login",
                          textStyle: TextStyles
                              .font28eggplantPurpleBoldPlayfairDisplay),
                      verticalSpace(30),
                      const LoginEmailAndPassword(),
                      verticalSpace(20),
                      AnimatedAppTextButton(
                          text: "Forgot Password?",
                          textStyle:
                              TextStyles.font13LightPurpleMediumPlayfairDisplay,
                          milliSecondsDuration: 1700,
                          onPressed: () {
                            context.pushNamed(Routes.checkEmailScreen,
                                arguments: Constants.login);
                          }),
                      verticalSpace(20),
                      AnimatedAppButton(
                          milliSecondsDuration: 1900,
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (builder) => Center(
                                    child: Assets.lottieAnimation.loadingCircle
                                        .lottie()));
                            await Future.delayed(const Duration(seconds: 4));
                            context.pop();
                            showSuccessSnackbar(context,
                                message: "Login successful", title: "Success");

                            Future.delayed(const Duration(seconds: 4))
                                .then((onValue) {
                              context.pushNamed(
                                Routes.mainLayoutScreen,
                              );
                            });
                          },
                          color: ColorsManager.eggplantPurple,
                          height: 48,
                          text: "Login",
                          textStyle:
                              TextStyles.font15WhiteMediumPlayfairDisplay),
                      verticalSpace(20),
                      AnimatedAppTextButton(
                          text: "Create Account",
                          textStyle: TextStyles
                              .font13SemiTransparentDarkPurpleSemiBoldPlayfairDisplay,
                          milliSecondsDuration: 2000,
                          onPressed: () {
                            context.pushNamed(Routes.signUpScreen);
                          })
                    ],
                  ),
                ),
                const LoginBlocListner()
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
