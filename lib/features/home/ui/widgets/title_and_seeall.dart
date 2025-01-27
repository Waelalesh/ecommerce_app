import 'package:ecommerce_app/imports.dart';

class TitleAndSeeall extends StatelessWidget {
  const TitleAndSeeall({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.font16DarkNavyBlueMediumAirbnbCerialApp,
        ),
        TextButton(
          onPressed: () {},
          child: Text('See All',
              style: TextStyles.font13MainBlueRegularAirbnbCerialApp),
        ),
      ],
    );
  }
}
