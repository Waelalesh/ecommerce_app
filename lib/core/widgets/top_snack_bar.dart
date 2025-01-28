import "package:ecommerce_app/imports.dart";

showSuccessSnackbar(BuildContext context,
    {required String title, required String message}) {
  return Flushbar(
    borderRadius: BorderRadius.circular(10),
    margin: EdgeInsets.symmetric(horizontal: 7.w),
    flushbarPosition: FlushbarPosition.TOP,
    message: message,
    title: title,
    animationDuration: const Duration(seconds: 1),
    duration: const Duration(seconds: 3),
    // backgroundColor: Colors.purple[900]!,
    backgroundGradient: LinearGradient(
        colors: [Colors.purple[700]!, Colors.white],
        begin: FractionalOffset.bottomLeft,
        end: FractionalOffset.topRight),
  ).show(context);
}

showErrorSnackbar(BuildContext context,
    {required String title, required String message}) {
  return Flushbar(
          borderRadius: BorderRadius.circular(10),
          margin: EdgeInsets.symmetric(horizontal: 7.w),
          flushbarPosition: FlushbarPosition.TOP,
          message: message,
          title: title,
          animationDuration: const Duration(seconds: 1),
          duration: const Duration(seconds: 3),
          backgroundGradient: ColorsManager.errorGradient)
      .show(context);
}
