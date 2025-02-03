import 'package:ecommerce_app/core/helpers/functions.dart';

import '../../imports.dart';

class ExitApp extends StatelessWidget {
  const ExitApp({super.key, required this.child});
  final Widget child;
  static DateTime? lastPressed;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          Functions.pressTwoTimesToBack();
          // final now = DateTime.now();

          // if (lastPressed == null ||
          //     now.difference(lastPressed!) > const Duration(seconds: 2)) {
          //   lastPressed = now;
          //   Fluttertoast.showToast(
          //       fontAsset: Constants.fontPlayFairDisplay,
          //       msg: "Press back again to exit",
          //       toastLength: Toast.LENGTH_SHORT,
          //       timeInSecForIosWeb: 1,
          //       backgroundColor: Colors.black87,
          //       textColor: Colors.white,
          //       gravity: ToastGravity.BOTTOM,
          //       fontSize: 15.0);
          //   return;
          // }

          // lastPressed = null;
          // Fluttertoast.cancel();
          // if (Platform.isAndroid) {
          //   await SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          //   await Future.delayed(const Duration(milliseconds: 100));
          //   exit(0);
          // } else {
          //   exit(0);
          // }
        },
        child: child);
  }
}
