import 'package:ecommerce_app/features/otp/data/models/argument_otp_model.dart';
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
          checkEmailSuccess: (checkEmailResponse) async {
            context.pop();
            showSuccessSnackbar(context,
                title: "Check E-mail Success",
                message: checkEmailResponse.message ?? "Error To Get Message");
            await Future.delayed(const Duration(seconds: 3));
            if (context.mounted) {
              context.pushReplacementNamed(Routes.otpScreen,
                  arguments: ArgumentOtpModel<String>(
                      data: checkEmailResponse.email,
                      routeName: Routes.checkEmailScreen));
            }
          },
          checkEmailError: (apiErrorModel) {
            context.pop();
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
