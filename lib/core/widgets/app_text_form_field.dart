import 'package:ecommerce_app/imports.dart';

class AppTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextFormFieldType type;
  final String? hintText;
  final TextStyle? hintStyle;
  final Color? backgroundColor;
  final Widget? prefixIcon;
  final PhoneController? phoneController;

  /// for check if last field to delete last border line
  final bool isLast;
  final Widget? suffixIcon;
  const AppTextFormField({
    super.key,
      this.controller,
    this.validator,
    required this.type,
    this.hintText,
    this.hintStyle,
    this.backgroundColor,

    /// for check if last field to delete last border line
    required this.isLast,
    this.suffixIcon,
    this.prefixIcon,
    this.phoneController,
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
              controller: widget.phoneController,
              decoration: InputDecoration(
                suffixIcon: widget.suffixIcon,
                border: InputBorder.none,
              ),
              // initialValue: PhoneNumber.parse('+963'), // or use the controller
              validator: PhoneValidator.compose([
                PhoneValidator.required(context),
                PhoneValidator.validMobile(context)
              ]),
              countrySelectorNavigator: const CountrySelectorNavigator.page(),
              onChanged: (phoneNumber) => print('changed into $phoneNumber'),
              enabled: true,
              isCountrySelectionEnabled: true,
              isCountryButtonPersistent: true,
              countryButtonStyle: CountryButtonStyle(
                  textStyle: widget.hintStyle,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  showDialCode: true,
                  showIsoCode: true,
                  showFlag: false,
                  flagSize: 0),
            )
          : TextFormField(
              obscureText: widget.type == TextFormFieldType.password
                  ? !obscureText
                  : false,
              controller: widget.controller,
              validator: widget.validator,
              decoration: InputDecoration(
                prefixIcon: widget.prefixIcon,
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
                        duration: const Duration(milliseconds: 700))
                    : widget.suffixIcon,
                border: InputBorder.none,
                hintText: widget.hintText ?? "Empty",
                hintStyle: widget.hintStyle ??
                    TextStyles.font15DoveGrayMediumPlayfairDisplay,
              )),
    );
  }
}
