import 'package:ecommerce_app/features/home/ui/widgets/catigory_card.dart';
import 'package:ecommerce_app/imports.dart';

class CatigoriesView extends StatelessWidget {
  const CatigoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 192.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const CatigoryCard();
        },
      ),
    );
  }
}
