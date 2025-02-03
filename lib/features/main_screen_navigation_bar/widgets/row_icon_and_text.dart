import 'package:ecommerce_app/imports.dart';

class RowIconAndText extends StatelessWidget {
  const RowIconAndText({super.key, required this.text, required this.svgImage});
  final String text;
  final SvgPicture svgImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        verticalSpace(39),
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {},
          // splashColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                svgImage,
                horizontalSpace(25),
                Text(
                  text,
                  style: TextStyles.font14WhiteMediumAirbnbCerialApp,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
