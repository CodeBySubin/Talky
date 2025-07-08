import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talky/core/constants/app_color.dart';

class AppStyles {
  static TextStyle get splashText => GoogleFonts.inter(
    color: AppColor.white,
    fontWeight: FontWeight.bold,
    fontSize: 80,
  );
}
