import 'package:ecommerce_app/imports.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
                context: context,
                builder: (builder) => Center(
                    child: Assets.lottieAnimation.loadingTelegram.lottie()));
          },
          signupSuccess: (signupResponse) {
            context.pop();
            Future.delayed(const Duration(seconds: 3));
            showSuccessSnackbar(context,
                title: "Signup Success",
                message: signupResponse.message ?? "Error To Get Message");

            /// to check in the next screen if navigate to [login] screen or [change password] screen
            /// we passed the argument as a route name to check it
            context.pushReplacementNamed(Routes.otpScreen,
                arguments: Routes.signUpScreen);
          },
          signupError: (apiErrorModel) {
            showErrorSnackbar(context,
                title: "Signup Error",
                message: apiErrorModel.getAllErrorMessages());
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}

  // void showSuccessDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text(
  //           'Signup Successful',
  //           textAlign: TextAlign.center,
  //         ),
  //         content: SingleChildScrollView(
  //           child: ListBody(
  //             children: <Widget>[
  //               AnimatedTextKit(
  //                 totalRepeatCount: 2,
  //                 animatedTexts: [
  //                   TyperAnimatedText(
  //                       "Welcome To The Engineer\nأَهلاََ بِكَ حَضْرَةَ المُهَندِس",
  //                       textStyle: TextStyles.font24BlueBold,
  //                       speed: const Duration(milliseconds: 60),
  //                       textAlign: TextAlign.center),
  //                 ],
  //               ),
  //               // Text('Congratulations, you have signed up successfully!'),
  //               // Text(
  //               //   "Welcome To Engineer\nأهلاََ بالمهندس",
  //               //   style: TextStyles.font24BlueBold,
  //               // )
  //             ],
  //           ),
  //         ),
  //         actions: <Widget>[
  //           TextButton(
  //             style: TextButton.styleFrom(
  //               overlayColor: Colors.white,
  //               backgroundColor: Colors.blue,
  //               surfaceTintColor: Colors.grey,
  //             ),
  //             onPressed: () {
  //               context.pushNamed(Routes.homeScreen);
  //             },
  //             child: Text(
  //               'Continue',
  //               style: TextStyles.font16WhiteMedium,
  //             ),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }

//   void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
//     context.pop();
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         icon: const Icon(
//           Icons.error,
//           color: Colors.red,
//           size: 32,
//         ),
//         content: Text(
//           apiErrorModel.getAllErrorMessages(),
//           style: TextStyles.font15DarkBlueMedium,
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               context.pop();
//             },
//             child: Text(
//               'Got it',
//               style: TextStyles.font14BlueSemiBold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
