

import '../../imports.dart';

class TopImages extends StatelessWidget {
  const TopImages({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.h,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: -40.h,
            height: 
            // 400,
            360.h,   
            width: 1.sw,
            child: FadeInUp(
                duration: const Duration(seconds: 1),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Assets.images.background.path),
                          fit: BoxFit.fill
                          )),
                )),
          ),
          Positioned(
            height: 360.h, 
            width: 1.sw + 20.w,
            child: FadeInUp(
                duration: const Duration(milliseconds: 1000),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Assets.images.background2.path),
                          fit: BoxFit.fill
                          )),
                )),
          )
        ],
      ),
    );
  }
}
