import '../../../imports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                        text: "Login",
                        textStyle: TextStyles.font28eggplantPurpleBold),
                    verticalSpace(30),
                    const TextForms(),
                    verticalSpace(20),
                    AnimatedAppTextButton(
                        text: "Forgot Password?",
                        textStyle: TextStyles.font13LightPurpleMedium,
                        milliSecondsDuration: 1700,
                        onPressed: () {}),
                    verticalSpace(20),
                    AnimatedAppButton(
                        milliSecondsDuration: 1900,
                        onPressed: () {},
                        color: ColorsManager.eggplantPurple,
                        height: 48,
                        text: "Login",
                        textStyle: TextStyles.font13WhiteMedium),
                    verticalSpace(20),
                    AnimatedAppTextButton(
                        text: "Create Account",
                        textStyle:
                            TextStyles.font13semiTransparentDarkPurpleMedium,
                        milliSecondsDuration: 2000,
                        onPressed: () {})
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
