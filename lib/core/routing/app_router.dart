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
          // BlocProvider(
          // create: (context) => getIt<LoginCubit>(),
          // child:
        );
      case Routes.signUpScreen:
        return PageTransition(
            duration: const Duration(milliseconds: 1000),
            reverseDuration: const Duration(milliseconds: 1000),
            childCurrent: const LoginScreen(),
            childBuilder: (context) => const SignupScreen(),
            // child: ,
            settings: settings,
            type: PageTransitionType.bottomToTop,
            reverseType: PageTransitionType.topToBottom

            // BlocProvider(
            // create: (context) => getIt<LoginCubit>(),
            // child:
            );
      // );

      default:
        return null;
    }
  }
}
