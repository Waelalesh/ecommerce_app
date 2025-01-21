import 'imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // to fix texts font bug in flutter_screenutils in release mode
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();

  runApp(EcommerceApp(
    router: AppRouter(),
  ));
}

Future<void> checkIfLoggedInUser() async {
  String? userToken =
      await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
