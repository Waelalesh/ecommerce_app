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
                        textStyle: TextStyles.font28eggplantPurpleBold),
                    verticalSpace(30),
                    OtpTextField(
                      onSubmit: (value) {
                        if (ModalRoute.of(context)!.settings.arguments ==
                            Constants.signup) {
                          context.pushNamedAndRemoveUntil(Routes.logInScreen,
                              predicate: (predicate) => false);
                        } else {
                          debugPrint(
                              "============================== ${ModalRoute.of(context)!.settings.arguments}");
                        }
                      },
                      borderColor: ColorsManager.normalPurple,
                      fieldWidth: 60.w,
                      showFieldAsBox: true,
                      numberOfFields: 5,
                      borderRadius: BorderRadius.circular(25),
                    ),
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
