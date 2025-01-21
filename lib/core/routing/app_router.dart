import 'package:ecommerce_app/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.logInScreen:
        return MaterialPageRoute(
          builder: (context) =>
              // BlocProvider(
              // create: (context) => getIt<LoginCubit>(),
              // child:
                const LoginScreen(),
        );
      // );

      default:
        return null;
    }
  }
}
