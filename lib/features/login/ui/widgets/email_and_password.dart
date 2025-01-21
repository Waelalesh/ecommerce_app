import 'package:ecommerce_app/core/widgets/app_text_form_field.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../imports.dart';

class EmailAndPassword extends StatelessWidget {
  const EmailAndPassword({super.key});

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
                AppTextFormField(
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
                    hintText: "Username",
                    hintStyle: TextStyles.font15DoveGrayMedium),
                AppTextFormField(
                    isLast: false,
                    controller: TextEditingController(),
                    type: TextFormFieldType.phoneNumber,
                    hintText: "Username",
                    hintStyle: TextStyles.font15DoveGrayMedium),
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
                    hintText: "Password",
                    hintStyle: TextStyles.font15DoveGrayMedium),
              ],
            ),
          ),
        ));
  }
}
