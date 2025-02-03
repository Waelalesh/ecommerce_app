import 'package:ecommerce_app/features/main_screen_navigation_bar/main_menu_drawer_screen.dart';
import 'package:ecommerce_app/features/otp/logic/otp_cubit.dart';
import 'package:ecommerce_app/features/reset_password/logic/reset_password_cubit.dart';
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
          child: BlocProvider(
              create: (context) => getIt<SignupCubit>(),
              child: const SignupScreen()),
          settings: settings,
          type: PageTransitionType.bottomToTop,
        );
      case Routes.checkEmailScreen:
        return PageTransition(
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: BlocProvider(
            create: (context) => getIt<CheckEmailCubit>(),
            child: const CheckEmailScreen(),
          ),
          settings: settings,
          type: PageTransitionType.topToBottom,
        );
      case Routes.otpScreen:
        return PageTransition(
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          child: BlocProvider(
            create: (context) => getIt<OtpCubit>(),
            child: const OtpScreen(),
          ),
          settings: settings,
          type: PageTransitionType.rightToLeft,
        );
      case Routes.resetPasswordScreen:
        return PageTransition(
          alignment: Alignment.center,
          child: BlocProvider(
            create: (context) => getIt<ResetPasswordCubit>(),
            child: const ResetPasswordScreen(),
          ),
          duration: const Duration(milliseconds: 1000),
          reverseDuration: const Duration(milliseconds: 1000),
          settings: settings,
          type: PageTransitionType.scale,
        );
      case Routes.mainLayoutScreen:
        return PageTransition(
          child: MainMenuDrawerScreen(),
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
