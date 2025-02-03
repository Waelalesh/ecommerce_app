// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_app/features/check_email/ui/widgets/check_email_bloc_listner.dart';

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
                        textStyle:
                            TextStyles.font28eggplantPurpleBoldPlayfairDisplay),
                    verticalSpace(30),

                    /// Email Field
                    FadeInUp(
                      duration: const Duration(milliseconds: 1700),
                      child: Form(
                        key: context.read<CheckEmailCubit>().formKey,
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
                            controller:
                                context.read<CheckEmailCubit>().emailController,
                            type: TextFormFieldType.emailOrNormal,
                            hintText: "E-mail",
                            hintStyle:
                                TextStyles.font15DoveGrayMediumPlayfairDisplay,
                          ),
                        ),
                      ),
                    ),
                    verticalSpace(30),
                    AnimatedAppButton(
                        milliSecondsDuration: 1900,
                        onPressed: () {
                          validateThenDoCheckEmail(context);
                        },
                        color: ColorsManager.eggplantPurple,
                        height: 48,
                        text: "Check E-Mail",
                        textStyle: TextStyles.font15WhiteMediumPlayfairDisplay),
                  ],
                ),
              ),
              const CheckEmailBlocListner()
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoCheckEmail(BuildContext context) {
    if (context.read<CheckEmailCubit>().formKey.currentState!.validate()) {
      context.read<CheckEmailCubit>().emitCheckEmailStates();
    }
  }
}
