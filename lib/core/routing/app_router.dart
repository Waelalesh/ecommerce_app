import 'package:ecommerce_app/features/login/ui/login_screen.dart';
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
          child: const LoginScreen(), settings: settings,
          type: PageTransitionType.fade,
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
