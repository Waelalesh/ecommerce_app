import 'package:ecommerce_app/imports.dart';

class CatigoryCard extends StatelessWidget {
  const CatigoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
            width: 157.w,
            padding: EdgeInsets.only(left: 15.w),
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Assets.images.product.image(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best Seller",
                          style:
                              TextStyles.font12MainBlueRegularAirbnbCerialApp,
                        ),
                        Text(
                          "Nike Jordan",
                          style: TextStyles
                              .font13DarkNavyBlueMediumAirbnbCerialApp,
                        ),
                        Text(
                          "\$493.00",
                          style: TextStyles
                              .font14DarkNavyBlueMediumAirbnbCerialApp,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 35.w,
                      height: 35.h,
                      decoration: const BoxDecoration(
                          color: ColorsManager.mainBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(15),
                          )),
                      child: Assets.svgs.addIcon.svg(),
                    )
                  ],
                ),
              ],
            ),
          );
  }
}
