// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../imports.dart';

class MainScreenNavigationBar extends StatefulWidget {
  const MainScreenNavigationBar({super.key});

  @override
  MainScreenNavigationBarState createState() => MainScreenNavigationBarState();
}

class MainScreenNavigationBarState extends State<MainScreenNavigationBar> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          changeScreenByIndex(),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80.h,
              child: Stack(
                // overflow: Overflow.visible,
                children: [
                  CustomPaint(
                    size: Size(
                        size.width,
                        (size.width * 0.29333333333333333)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.7,
                    child: IconButton(
                        style: const ButtonStyle(
                            padding: WidgetStatePropertyAll(EdgeInsets.all(17)),
                            backgroundColor:
                                WidgetStatePropertyAll(ColorsManager.mainBlue)),
                        onPressed: () {
                         ZoomDrawer.of(context)!.toggle();
                        },
                        icon: Assets.svgs.shopIcon
                            .svg(height: 25.h, width: 24.w)),
                  ),
                  SizedBox(
                    width: size.width,
                    height: 80.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Assets.svgs.homeIcon
                              .svg(color: setColorByIndex(0)),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Assets.svgs.favorite
                                .svg(color: setColorByIndex(1)),
                            onPressed: () {
                              setBottomBarIndex(1);
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Assets.svgs.notificationIcon
                                .svg(color: setColorByIndex(2)),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                        IconButton(
                            icon:
                                Assets.svgs.user.svg(color: setColorByIndex(3)),
                            onPressed: () {
                              setBottomBarIndex(3);
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color setColorByIndex(int index) {
    return currentIndex == index
        ? ColorsManager.mainBlue
        : ColorsManager.lightGray;
  }

  Widget changeScreenByIndex() {
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        // Add your favorite screen here
        return const Scaffold(body: Center(child: Text('Favorite')));
      case 2:
        // Add your notification screen here
        return const Scaffold(body: Center(child: Text('Notification')));
      case 3:
        // Add your user profile screen here
        return const Scaffold(body: Center(child: Text('User Profile')));
      default:
        return const Scaffold(body: Center(child: Text('Home')));
    }
  }
}
