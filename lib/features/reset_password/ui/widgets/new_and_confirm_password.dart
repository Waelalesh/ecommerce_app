import 'package:ecommerce_app/imports.dart';

class NewAndConfirmPassword extends StatelessWidget {
  const NewAndConfirmPassword({super.key, required this.milliSecondsDuration});
  final int milliSecondsDuration;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: milliSecondsDuration),
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
          children: [
            AppTextFormField(
              isLast: false,
              type: TextFormFieldType.password,
              controller: TextEditingController(),
              hintText: 'New Password',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your new password';
                }
                if (!AppRegex.isPasswordValid(value)) {
                  return 'Password must be at least 8 characters with letters and numbers';
                }
                return null;
              },
            ),
            AppTextFormField(
              isLast: true,
              type: TextFormFieldType.password,
              controller: TextEditingController(),
              hintText: 'Confirm Password',
              validator: (value) {
                if (value == null || value.isEmpty) {
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
