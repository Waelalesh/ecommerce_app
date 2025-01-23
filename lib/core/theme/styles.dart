import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';
import 'font_weight_helper.dart';

class TextStyles {
  static TextStyle font28eggplantPurpleBold = TextStyle(
    fontSize: 28.sp,
    color: ColorsManager.eggplantPurple,
    fontWeight: FontWeightHelper.bold,
    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
  );
  static TextStyle font13LightPurpleMedium = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.lightPurple,
    fontWeight: FontWeightHelper.medium,
    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
  );
  static TextStyle font15DoveGrayMedium = TextStyle(
    fontSize: 15.sp,
    color: ColorsManager.doveGray,
    fontWeight: FontWeightHelper.medium,
    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
  );
  static TextStyle font15WhiteMedium = TextStyle(
    fontSize: 15.sp,
    color: Colors.white,
    fontWeight: FontWeightHelper.medium,
    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
  );
  static TextStyle font13SemiTransparentDarkPurpleSemiBold = TextStyle(
    fontSize: 13.sp,
    color: ColorsManager.semiTransparentDarkPurple,
    fontWeight: FontWeightHelper.semiBold,
    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
  );
}
