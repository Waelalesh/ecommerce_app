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
                        onPressed: () {
                          context.pushNamedAndRemoveUntil(Routes.logInScreen,
                              predicate: (route) => false);
                        },
                        color: ColorsManager.eggplantPurple,
                        height: 48,
                        text: "Confirm Password",
                        textStyle: TextStyles.font15WhiteMediumPlayfairDisplay),
                    verticalSpace(20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
