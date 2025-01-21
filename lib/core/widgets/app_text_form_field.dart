import 'package:ecommerce_app/core/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '../theme/colors.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextFormFieldType type;
  final String hintText;
  final TextStyle hintStyle;
  final Color? backgroundColor;

  /// for check if last field to delete last border line
  final bool isLast;

  const AppTextFormField({
    super.key,
    required this.controller,
    this.validator,
    required this.type,
    required this.hintText,
    required this.hintStyle,
    this.backgroundColor,
    required this.isLast,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: widget.isLast
          ? null
          : const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: ColorsManager.paleMauve))),
      child: widget.type == TextFormFieldType.phoneNumber
          ? PhoneFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              initialValue: PhoneNumber.parse('+963'), // or use the controller
              validator: PhoneValidator.compose([
                PhoneValidator.required(context),
                PhoneValidator.validMobile(context)
              ]),
              countrySelectorNavigator: const CountrySelectorNavigator.page(),
              onChanged: (phoneNumber) => print('changed into $phoneNumber'),
              enabled: true,
              isCountrySelectionEnabled: true,
              isCountryButtonPersistent: true,
              countryButtonStyle:   CountryButtonStyle(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  showDialCode: true,
                  showIsoCode: true,
                  showFlag: false,
                  flagSize: 0),

              // + all parameters of TextField
              // + all parameters of FormField
              // ...
            )
          // IntlPhoneField(
          //     disableLengthCheck: true,
          //     controller: widget.controller,
          //     decoration: InputDecoration(
          //       border: InputBorder.none,
          //       // hintText: widget.hintText,
          //       // hintStyle: widget.hintStyle,
          //     ),
          //   )
          : TextFormField(
              obscureText: widget.type == TextFormFieldType.password
                  ? !obscureText
                  : false,
              controller: widget.controller,
              validator: widget.validator,
              decoration: InputDecoration(
                suffixIcon: widget.type == TextFormFieldType.password
                    ? AnimatedCrossFade(
                        firstChild: IconButton(
                            color: Colors.black,
                            onPressed: () =>
                                setState(() => obscureText = false),
                            icon: const Icon(Icons.visibility)),
                        secondChild: IconButton(
                            color: Colors.black,
                            onPressed: () => setState(() => obscureText = true),
                            icon: const Icon(Icons.visibility_off)),
                        crossFadeState: obscureText
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                        duration: const Duration(seconds: 1))
                    : null,
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: widget.hintStyle,
              )
              // TextStyles.font13DoveGrayMedium),
              ),
    );
  }
}

// class ApplicationTextFormField extends StatefulWidget {
//   const ApplicationTextFormField({
//     super.key,
//     required this.controller,
//     required this.hintText,
//     required this.hintStyle,
//     required this.suffixIcon,
//     this.backgroundColor,
//     required this.validator,
//     required this.borderRadius,
//     required this.type,
//   });
//   final TextEditingController controller;
//   final String hintText;
//   final TextStyle hintStyle;
//   final Widget suffixIcon;
//   final Color? backgroundColor;
//   final Function(String?) validator;
//   final double borderRadius;
//   final TextFormFieldType type;

//   @override
//   State<ApplicationTextFormField> createState() =>
//       _ApplicationTextFormFieldState();
// }

// class _ApplicationTextFormFieldState extends State<ApplicationTextFormField> {
//   bool obscureText = false;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: !obscureText,
//       decoration: InputDecoration(
//         focusedErrorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(widget.borderRadius)),
//         fillColor: widget.backgroundColor,
//         filled: true,
//         focusedBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(widget.borderRadius)),
//         errorBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(widget.borderRadius)),
//         enabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(widget.borderRadius)),
//         disabledBorder: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(widget.borderRadius)),
//         border: OutlineInputBorder(
//             borderSide: const BorderSide(color: Colors.red),
//             borderRadius: BorderRadius.circular(widget.borderRadius)),
//         hintText: widget.hintText,
//         suffixIcon: widget.type == TextFormFieldType.password
//             ? AnimatedCrossFade(
//                 firstChild: IconButton(
//                     color: Colors.white,
//                     onPressed: () => setState(() => obscureText = false),
//                     icon: const Icon(Icons.visibility)),
//                 secondChild: IconButton(
//                     color: Colors.white,
//                     onPressed: () => setState(() => obscureText = true),
//                     icon: const Icon(Icons.visibility_off)),
//                 crossFadeState: obscureText
//                     ? CrossFadeState.showFirst
//                     : CrossFadeState.showSecond,
//                 duration: const Duration(seconds: 1))
//             : null,
//         hintStyle: widget.hintStyle,
//       ),
//       controller: widget.controller,
//     );
//   }
// }
