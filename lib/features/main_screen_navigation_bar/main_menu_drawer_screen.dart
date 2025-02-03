import 'package:ecommerce_app/features/main_screen_navigation_bar/widgets/menu_drawer_screen.dart';
import 'package:ecommerce_app/imports.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MainMenuDrawerScreen extends StatelessWidget {
  MainMenuDrawerScreen({super.key});
  final ZoomDrawerController _controller = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
        showShadow: true, 
        controller: _controller,
        slideWidth: 330.w,
        mainScreenScale: 0.25,
        dragOffset: 100,
        borderRadius: 25,
        menuBackgroundColor: ColorsManager.darkNavyBlue,
        angle: 10,
        style: DrawerStyle.defaultStyle,
        menuScreen: MenuDrawerScreen(
          controller: _controller,
        ),
        mainScreen: const MainScreenNavigationBar());
  }
}
