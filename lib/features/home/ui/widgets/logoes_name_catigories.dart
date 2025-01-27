import 'package:ecommerce_app/imports.dart';

class LogoesNameCatigories extends StatefulWidget {
  const LogoesNameCatigories({super.key});

  @override
  State<LogoesNameCatigories> createState() => _LogoesNameCatigoriesState();
}

class _LogoesNameCatigoriesState extends State<LogoesNameCatigories> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 20.h,
            padding: EdgeInsets.only(right: 15.w, left: 5.h),
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: const BoxDecoration(
                color: ColorsManager.mainBlue,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(40),
                  right: Radius.circular(40),
                )),
            child: Row(
              children: [
                Assets.svgs.nikeLogo.svg(
                  height: 40.h,
                ),
                horizontalSpace(6.w),
                Text("Nike", style: TextStyles.font12WhiteMediumAirbnbCerialApp)
              ],
            ),
          );
        },
      ),
    );
  }
}
