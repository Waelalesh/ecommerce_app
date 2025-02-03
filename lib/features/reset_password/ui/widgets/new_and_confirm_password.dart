import 'package:ecommerce_app/features/reset_password/logic/reset_password_cubit.dart';
import 'package:ecommerce_app/imports.dart';

class NewAndConfirmPassword extends StatelessWidget {
  const NewAndConfirmPassword({super.key, required this.milliSecondsDuration});
  final int milliSecondsDuration;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: milliSecondsDuration),
      child: Form(
          key: context.read<ResetPasswordCubit>().formKey,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: ColorsManager.mutedPastelPurple),
                boxShadow: const [
                  BoxShadow(
                    color: ColorsManager.paleMauve,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  )
                ]),
            child: Column(
              children: [
                AppTextFormField(
                  isLast: false,
                  type: TextFormFieldType.password,
                  controller:
                      context.read<ResetPasswordCubit>().passwordController,
                  hintText: 'New Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your new password';
                    } else if (!AppRegex.hasMinLength(value)) {
                      return 'Password must be at least 8 characters with letters and numbers';
                    }
                    return null;
                  },
                ),
                AppTextFormField(
                  isLast: true,
                  type: TextFormFieldType.password,
                  controller: context
                      .read<ResetPasswordCubit>()
                      .confirmationPasswordController,
                  hintText: 'Confirm Password',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      if (value !=
                          context
                              .read<ResetPasswordCubit>()
                              .passwordController
                              .text) {
                        return "The password is not Correct for The Password";
                      }
                      return 'Please confirm your new password';
                    }

                    return null;
                  },
                ),
              ],
            ),
          )),
    );
  }
}
