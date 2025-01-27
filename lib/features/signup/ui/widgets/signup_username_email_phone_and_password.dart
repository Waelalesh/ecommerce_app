import '../../../../imports.dart';

class SignupUsernameEmailPhoneAndPassword extends StatelessWidget {
  const SignupUsernameEmailPhoneAndPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        duration: const Duration(milliseconds: 1700),
        child: Form(
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
              children: <Widget>[
                ///Username Field
                AppTextFormField(
                    suffixIcon: const Icon(Icons.person_outline),
                    validator: (value) {
                      if (value.isNullOrEmpty()) {
                        return "Please Enter a User Name.";
                      }
                      return null;
                    },
                    isLast: false,
                    controller: TextEditingController(),
                    type: TextFormFieldType.emailOrNormal,
                    hintText: "Username",
                    hintStyle: TextStyles.font15DoveGrayMediumPlayfairDisplay),

                /// Email Field
                AppTextFormField(
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
                  hintStyle: TextStyles.font15DoveGrayMediumPlayfairDisplay,
                ),

                /// Phone Number Field
                AppTextFormField(
                    suffixIcon: const Icon(Icons.call_outlined),
                    isLast: false,
                    controller: TextEditingController(),
                    type: TextFormFieldType.phoneNumber,
                    hintStyle: TextStyles.font15DoveGrayMediumPlayfairDisplay),

                /// Password Field
                AppTextFormField(
                    validator: (value) {
                      if (!AppRegex.hasMinLength(value!)) {
                        return "Password must be at least 8 characters long.";
                      }
                      return null;
                    },
                    isLast: false,
                    controller: TextEditingController(),
                    type: TextFormFieldType.password,
                    hintText: "Password",
                    hintStyle: TextStyles.font15DoveGrayMediumPlayfairDisplay),

                /// Confirm Password Field
                AppTextFormField(
                    validator: (value) {
                      if (!AppRegex.hasMinLength(value!)) {
                        return "Password must be at least 8 characters long.";
                      }
                      return null;
                    },
                    isLast: true,
                    controller: TextEditingController(),
                    type: TextFormFieldType.password,
                    hintText: "Confirm Password",
                    hintStyle: TextStyles.font15DoveGrayMediumPlayfairDisplay),
              ],
            ),
          ),
        ));
  }
}
