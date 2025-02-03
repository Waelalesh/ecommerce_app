import 'package:ecommerce_app/imports.dart';

class Functions {
  static DateTime? _lastPressed;

  static void pressTwoTimesToBack() async {
    final now = DateTime.now();

    if (_lastPressed == null ||
        now.difference(_lastPressed!) > const Duration(seconds: 2)) {
      _lastPressed = now;
      Fluttertoast.showToast(
          fontAsset: Constants.fontPlayFairDisplay,
          msg: "Press back again to exit",
          toastLength: Toast.LENGTH_SHORT,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black87,
          textColor: Colors.white,
          gravity: ToastGravity.BOTTOM,
          fontSize: 15.0);
      return;
    }

    _lastPressed = null;
    Fluttertoast.cancel();
    if (Platform.isAndroid) {
      await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      await Future.delayed(const Duration(milliseconds: 100));
      exit(0);
    } else {
      exit(0);
    }
  }
}
