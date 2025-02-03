// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:ecommerce_app/features/otp/data/models/argument_otp_model.dart';
import 'package:ecommerce_app/features/otp/data/models/otp_request_body.dart';
import 'package:ecommerce_app/features/otp/logic/otp_cubit.dart';
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
                        onSubmit: (value) {
                          /// Here we Check if the argument we passed in prvious screen is a [sign up] route to navigate to [login screen] to login
                          /// if not we navigate to [reset password screen]
                          validateThenVerifyCode(context, value);
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

  void validateThenVerifyCode(BuildContext context, String otpNumber) {
    ArgumentOtpModel argumentOtpModel =
        ModalRoute.of(context)!.settings.arguments as ArgumentOtpModel;
    if (argumentOtpModel.routeName == Routes.signUpScreen) {
      context
          .read<OtpCubit>()
          .emitVerifiCodeForRegisterStates(OtpRequestBodyForSignUp(
            email: argumentOtpModel.data!.email,
            name: argumentOtpModel.data!.name,
            otp: otpNumber,
            password: argumentOtpModel.data!.password,
            phoneNumber: argumentOtpModel.data!.phoneNumber,
          ));
    } else {
      context.read<OtpCubit>().emitVerifiCodeForResetPasswordStates(
          email: argumentOtpModel.data, otp: otpNumber);
    }
  }
}
