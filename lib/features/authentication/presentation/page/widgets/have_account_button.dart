import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/constants.dart';

Widget haveAcoountButton({
  void Function()? onTap,
  required String account,
  required String title,
}) {
  return Center(
    child: GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          text:title,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(fontSize: 17.sp, color: AppColor.textgrey),
          ),
          children: [
            TextSpan(
              text:account,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontSize: 17.sp, color: AppColor.white),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
