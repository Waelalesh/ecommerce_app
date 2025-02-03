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
          loginSuccess: (loginResponse) async {
            context.pop();
            showSuccessSnackbar(context,
                title: "Login Success",
                message: loginResponse.message ?? "Error To Get Message");
            await Future.delayed(const Duration(seconds: 3));
            if (context.mounted) {
              context.pushReplacementNamed(Routes.mainLayoutScreen);
            }
          },
          loginError: (apiErrorModel) {
            context.pop();
            showErrorSnackbar(context,
                title: "Login Error",
                message: apiErrorModel.getAllErrorMessages());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
