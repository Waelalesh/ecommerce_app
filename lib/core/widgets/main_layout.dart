import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/features/home/ui/home_screen.dart';

import '../../imports.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  NavigationItem _selectedItem = NavigationItem.home;

  final Map<NavigationItem, Widget> _pages = {
    NavigationItem.home: const HomeScreen(),
    // NavigationItem.favorites: const FavoritesPage(),
    // NavigationItem.cart: const CartPage(),
    // NavigationItem.profile: const ProfilePage(),
  };

  void _onItemTapped(NavigationItem item) {
    setState(() {
      _selectedItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBody: true,
      body: _pages[_selectedItem],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: ColorsManager.mainBlue,
        index: _selectedItem.index, // type: BottomNavigationBarType.fixed,
        items: [
          Padding(
            padding:   const EdgeInsets.all(6),
            child: Assets.svgs.homeIcon.svg(),
          ),
          Assets.svgs.favorite.svg(),
          Assets.svgs.shop.svg(),
          Assets.svgs.notificationIcon.svg(),
          Assets.svgs.user.svg(),
        ],
        onTap: (index) => _onItemTapped(NavigationItem.values[index]),
      ),
    );
  }
}
