import 'package:ecommerce_app/features/check_email/ui/check_email_screen.dart';
import 'package:ecommerce_app/features/login/ui/login_screen.dart';
import 'package:ecommerce_app/features/signup/ui/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.logInScreen:
        return PageTransition(
          child: const LoginScreen(),
          settings: settings,
          type: PageTransitionType.leftToRight,
        );
      case Routes.signUpScreen:
        return PageTransition(
            duration: const Duration(milliseconds: 1000),
            reverseDuration: const Duration(milliseconds: 1000),
            childCurrent: const LoginScreen(),
            child: const SignupScreen(),
            settings: settings,
            type: PageTransitionType.bottomToTop,
            reverseType: PageTransitionType.topToBottom);
      case Routes.checkEmailScreen:
        return PageTransition(
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 500),
            reverseDuration: const Duration(milliseconds: 500),
            // childCurrent: const LoginScreen(),
            child: const CheckEmailScreen(),
            // child: ,
            settings: settings,
            type: PageTransitionType.scale,
            reverseType: PageTransitionType.topToBottom);
      // );

      default:
        return null;
    }
  }
}
