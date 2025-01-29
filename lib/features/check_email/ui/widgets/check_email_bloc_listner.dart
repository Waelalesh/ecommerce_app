import 'package:ecommerce_app/imports.dart';

class CheckEmailBlocListner extends StatelessWidget {
  const CheckEmailBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CheckEmailCubit, CheckEmailState>(
      listenWhen: (previous, current) =>
          current is CheckEmailLoading ||
          current is CheckEmailSuccess ||
          current is CheckEmailError,
      listener: (context, state) {
        state.whenOrNull(
          checkEmailLoading: () {
            showDialog(
                context: context,
                builder: (builder) => Center(
                    child: Assets.lottieAnimation.loaidngColors.lottie()));
          },
          checkEmailSuccess: (checkEmailResponse) {
            context.pop();
            Future.delayed(const Duration(seconds: 3));
            showSuccessSnackbar(context,
                title: "Check E-mail Success",
                message: checkEmailResponse.message ?? "Error To Get Message");
            context.pushReplacementNamed(Routes.otpScreen,
                arguments: Routes.checkEmailScreen);
          },
          checkEmailError: (apiErrorModel) {
            showErrorSnackbar(context,
                title: "Check E-mail Error",
                message: apiErrorModel.getAllErrorMessages());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
