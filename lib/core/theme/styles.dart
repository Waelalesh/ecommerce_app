import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font28eggplantPurpleBold = TextStyle(
    fontSize: 28.sp,
    color: ColorsManager.eggplantPurple,
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle font13LightPurpleMedium = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.lightPurple,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font13WhiteMedium = TextStyle(
    fontSize: 13.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle font13semiTransparentDarkPurpleMedium = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.semiTransparentDarkPurple,
    fontWeight: FontWeightHelper.medium,
  );
}
