import 'package:ecommerce_app/core/widgets/main_layout.dart';
import '../../../imports.dart';

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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => const MainLayout()));
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
