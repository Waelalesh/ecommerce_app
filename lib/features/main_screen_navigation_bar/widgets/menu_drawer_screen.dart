import 'package:ecommerce_app/core/helpers/functions.dart';
import 'package:ecommerce_app/features/main_screen_navigation_bar/widgets/row_icon_and_text.dart';
import 'package:ecommerce_app/imports.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuDrawerScreen extends StatelessWidget {
  const MenuDrawerScreen({super.key, required this.controller});
  final ZoomDrawerController controller;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        final isOpen = controller.isOpen!.call();

        if (isOpen) {
          controller.close?.call();
        } else {
          Functions.pressTwoTimesToBack();
        }
      },
      canPop: false,
      child: Scaffold(
        backgroundColor: ColorsManager.darkNavyBlue,
        body: Padding(
          padding: EdgeInsets.only(
            top: 80.h,
            left: 40.w,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  maxRadius: 45,
                  backgroundImage: Assets.images.engineer.image().image,
                ),
                RowIconAndText(
                    text: "Profile", svgImage: Assets.svgs.user.svg()),
                RowIconAndText(
                    text: "Home Page",
                    svgImage: Assets.svgs.homeIconMenu.svg()),
                RowIconAndText(
                    text: "My Cart", svgImage: Assets.svgs.shopIconMenu.svg()),
                RowIconAndText(
                    text: "Favorite", svgImage: Assets.svgs.favorite.svg()),
                RowIconAndText(
                    text: "Order", svgImage: Assets.svgs.orderIcon.svg()),
                RowIconAndText(
                    text: "Notifications",
                    svgImage: Assets.svgs.notificationMenuIcon.svg()),
                verticalSpace(40),
                Divider(
                  thickness: 2,
                  endIndent: 60.w,
                  color: ColorsManager.darkSlateBlue,
                ),
                RowIconAndText(
                    text: "Sign Out", svgImage: Assets.svgs.signOutIcon.svg()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
