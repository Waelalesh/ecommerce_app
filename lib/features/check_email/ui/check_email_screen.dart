import '../../../imports.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedAppText(
                        milliSecondsDuration: 1500,
                        text: "Check E-Mail",
                        textStyle: TextStyles.font28eggplantPurpleBold),
                    verticalSpace(30),

                    /// Email Field
                    FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                                color: ColorsManager.mutedPastelPurple),
                            boxShadow: const [
                              BoxShadow(
                                color: ColorsManager.paleMauve,
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              )
                            ]),
                        child: AppTextFormField(
                          suffixIcon: const Icon(Icons.mail_outline),
                          validator: (value) {
                            if (value.isNullOrEmpty() ||
                                !AppRegex.isEmailValid(value!)) {
                              return "Please Enter a Valid Email.";
                            }
                            return null;
                          },
                          isLast: false,
                          controller: TextEditingController(),
                          type: TextFormFieldType.emailOrNormal,
                          hintText: "E-mail",
                          hintStyle: TextStyles.font15DoveGrayMedium,
                        ),
                      ),
                    ),
                    verticalSpace(30),
                    AnimatedAppButton(
                        milliSecondsDuration: 1900,
                        onPressed: () {
                          context.pushNamed(Routes.otpScreen,
                              arguments: ModalRoute.of(context)!
                                  .settings
                                  .arguments );
                          
                        },
                        color: ColorsManager.eggplantPurple,
                        height: 48,
                        text: "Check E-Mail",
                        textStyle: TextStyles.font15WhiteMedium),
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
