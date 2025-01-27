import 'package:ecommerce_app/imports.dart';

class StoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const StoreAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(80.h);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
               radius: 25,
              backgroundColor: Colors.white,
              child: Assets.svgs.menuIcon.svg(),
            ),
            Column(
            
              children: [
                Text("Store Location",
                    style: TextStyles.font12LightGrayRegularAirbnbCerialApp),
                Text("Damascus , Syria",
                    style: TextStyles.font14DarkNavyBlueMediumAirbnbCerialApp),
              ],
            ),
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Assets.svgs.shop.svg(),
            ),
          ],
        ),
      ),
    );
  }
}

