import 'package:ecommerce_app/imports.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.lighterGray,
      appBar: StoreAppBar(
        onTap: () => ZoomDrawer.of(context)!.toggle(),
      ),
      body: SafeArea(
        bottom: true,
        child: ListView(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 20.h),
          children: [
            const SearchField(),
            verticalSpace(30),
            const LogoesNameCatigories(),
            verticalSpace(10),
            const TitleAndSeeall(title: "Popular Catigories"),
            verticalSpace(10),
            const CatigoriesView(),
            verticalSpace(10),
            const TitleAndSeeall(title: "Popular Catigories"),
            verticalSpace(10),
            const PopularCatigoriesCard()
          ],
        ),
      ),
    );
  }
}
