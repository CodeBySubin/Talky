import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';


Widget textButton({
  required String text,
  Color color = AppColor.primaryColor,
  Color textcolor = AppColor.white,
  required void Function()? onPressed,
  Size? size,
}) {
  final buttonSize = size ?? Size(316.w, 63.h);
  return TextButton(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(color),
      minimumSize: WidgetStatePropertyAll(buttonSize),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
    ),
  );
}