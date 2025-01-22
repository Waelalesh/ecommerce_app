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
                        textStyle: TextStyles.font28eggplantPurpleBold),
                    verticalSpace(30),
                    const EmailAndPassword(),
                    verticalSpace(20),
                    AnimatedAppButton(
                        milliSecondsDuration: 1900,
                        onPressed: () {},
                        color: ColorsManager.eggplantPurple,
                        height: 48,
                        text: "SignUp",
                        textStyle: TextStyles.font15WhiteMedium),
                    verticalSpace(20),
                    AnimatedAppTextButton(
                        text: "Login",
                        textStyle:
                            TextStyles.font13SemiTransparentDarkPurpleSemiBold,
                        milliSecondsDuration: 2000,
                        onPressed: () {
                          context.pop();
                        }),
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
