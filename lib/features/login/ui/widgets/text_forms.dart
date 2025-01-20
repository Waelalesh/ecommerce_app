import '../../../../imports.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        duration: const Duration(milliseconds: 1700),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(color: ColorsManager.mutedPastelPurple),
              boxShadow: const [
                BoxShadow(
                  color: ColorsManager.paleMauve,
                  blurRadius: 20,
                  offset: Offset(0, 10),
                )
              ]),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: ColorsManager.paleMauve))),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey.shade700)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey.shade700)),
                ),
              )
            ],
          ),
        ));
  }
}
