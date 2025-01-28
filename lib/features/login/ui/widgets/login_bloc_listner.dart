import 'package:ecommerce_app/imports.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginLoading ||
          current is LoginSuccess ||
          current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            showDialog(
                context: context,
                builder: (builder) => Center(
                    child: Assets.lottieAnimation.loadingCircle.lottie()));
          },
          loginSuccess: (loginResponse) {
            context.pop();
            Future.delayed(const Duration(seconds: 3));
            showSuccessSnackbar(context,
                title: "Login Success",
                message: loginResponse.message ?? "Error To Get Message");
            context.pushNamed(Routes.mainLayoutScreen);
          },
          loginError: (apiErrorModel) {
            // setupErrorState(context, apiErrorModel);
            showErrorSnackbar(context,
                title: "Login Error",
                message: apiErrorModel.getAllErrorMessages());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
        context: context,
        builder: (builder) => AlertDialog(
              icon: const Icon(
                Icons.error,
                color: Colors.red,
                size: 32,
              ),
              content: Text(
                apiErrorModel.getAllErrorMessages(),
                style: TextStyles.font13LightPurpleMediumPlayfairDisplay,
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      context.pop();
                    },
                    child: Text(
                      "Got it",
                      style: TextStyles
                          .font13SemiTransparentDarkPurpleSemiBoldPlayfairDisplay,
                    ))
              ],
            ));
  }
}
