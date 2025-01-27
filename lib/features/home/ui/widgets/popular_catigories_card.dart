import 'package:ecommerce_app/imports.dart';

class PopularCatigoriesCard extends StatelessWidget {
  const PopularCatigoriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50.h),
      padding: EdgeInsets.only(left: 25.w, top: 9.h, bottom: 9.h),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Best Seller",
                style: TextStyles.font12MainBlueMediumAirbnbCerialApp,
              ),
              Text(
                "Nike Jordan",
                style: TextStyles.font16DarkNavyBlueMediumAirbnbCerialApp,
              ),
              verticalSpace(5.h),
              Text(
                "\$493.00",
                style: TextStyles.font14DarkNavyBlueMediumAirbnbCerialApp,
              ),
            ],
          ),
          Assets.images.product.image(),
        ],
      ),
    );
  }
}
