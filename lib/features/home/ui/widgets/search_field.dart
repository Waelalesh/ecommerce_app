import 'package:ecommerce_app/imports.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
          border: Border.all(color: ColorsManager.mutedPastelPurple),
          boxShadow: const [
            BoxShadow(
              color: ColorsManager.mainBlue,
              blurRadius: 20,
              offset: Offset(0, 10),
            )
          ]),
      child: AppTextFormField(
        prefixIcon: Assets.svgs.searchIcon.svg(),
        hintStyle: TextStyles.font14LightGrayRegularAirbnbCerialApp,
        hintText: "Looking For Shopping",
        isLast: true,
        type: TextFormFieldType.emailOrNormal,
        controller: TextEditingController(),
      ),
    );
  }
}
