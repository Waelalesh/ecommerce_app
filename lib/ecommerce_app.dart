
 
import 'imports.dart';

class EcommerceApp extends StatelessWidget {
  final AppRouter router;
  const EcommerceApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: isLoggedInUser ? Routes.homeScreen : Routes.logInScreen,
          onGenerateRoute: router.generateRoute,
        ));
  }
}
