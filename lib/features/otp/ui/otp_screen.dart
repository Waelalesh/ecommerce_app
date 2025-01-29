// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:ecommerce_app/features/otp/ui/widgets/otp_bloc_listner.dart';

import '../../../imports.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AnimatedAppText(
                        milliSecondsDuration: 1500,
                        text: "Verification Code",
                        textStyle:
                            TextStyles.font28eggplantPurpleBoldPlayfairDisplay),
                    verticalSpace(10),
                    AnimatedAppText(
                        milliSecondsDuration: 1700,
                        text:
                            "A Verification Code Has Been Sent To Your Account",
                        textStyle: TextStyles
                            .font16EggplantPurpleRegularPlayfairDisplay),
                    verticalSpace(20),
                    FadeInUp(
                      duration: const Duration(milliseconds: 1900),
                      child: OtpTextField(
                        keyboardType: TextInputType.number,
                        onSubmit: (value) async {
                          showDialog(
                              context: context,
                              builder: (builder) => Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle),
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 60.w),
                                  child: Assets.lottieAnimation.loadingRocket
                                      .lottie()));
                          await Future.delayed(const Duration(seconds: 8));
                          context.pop();
                          showSuccessSnackbar(context,
                              message: "Verification Successful",
                              title: "Success");
                          Future.delayed(const Duration(seconds: 4))
                              .then((onValue) {
                            /// Here we Check if the argument we passed in prvious screen is a [sign up] route to navigate to [login screen] to login
                            /// if not we navigate to [reset password screen]
                            if (ModalRoute.of(context)!.settings.arguments ==
                                Routes.signUpScreen) {
                              context.pushNamedAndRemoveUntil(
                                  Routes.logInScreen,
                                  predicate: (predicate) => false);
                            } else {
                              context.pushNamed(Routes.resetPasswordScreen);
                            }
                          });
                        },
                        // fieldHeight: 100.h,
                        borderColor: ColorsManager.normalPurple,
                        fieldWidth: 60.w,
                        showFieldAsBox: true,
                        numberOfFields: 5,
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                  ],
                ),
              ),
              const OtpBlocListner()
            ],
          ),
        ),
      ),
    );
  }
}
