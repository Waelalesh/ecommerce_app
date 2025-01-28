import 'package:ecommerce_app/core/widgets/main_layout.dart';
import 'package:ecommerce_app/imports.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.logInScreen:
        return PageTransition(
          child: BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
          settings: settings,
          type: PageTransitionType.topToBottom,
        );
      case Routes.signUpScreen:
        return PageTransition(
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          childCurrent: const LoginScreen(),
          child: const SignupScreen(),
          settings: settings,
          type: PageTransitionType.bottomToTop,
        );
      case Routes.checkEmailScreen:
        return PageTransition(
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: const CheckEmailScreen(),
          settings: settings,
          type: PageTransitionType.topToBottom,
        );
      case Routes.otpScreen:
        return PageTransition(
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: const OtpScreen(),
          settings: settings,
          type: PageTransitionType.rightToLeft,
        );
      case Routes.resetPasswordScreen:
        return PageTransition(
          alignment: Alignment.center,
          child: const ResetPasswordScreen(),
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          settings: settings,
          type: PageTransitionType.scale,
        );
      case Routes.mainLayoutScreen:
        return PageTransition(
          child: const MainLayout(),
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          settings: settings,
          type: PageTransitionType.fade,
        );

      default:
        return null;
    }
  }
}
