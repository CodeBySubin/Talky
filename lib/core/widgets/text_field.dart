import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:talky/core/constants/app_color.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Color fillcolor;
  final bool filled;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final int? inputMaxLength;
    final List<TextInputFormatter>? inputFormatters; 
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.fillcolor = AppColor.white,
    this.filled = true,
    this.hintStyle,
    this.suffixIcon,
    this.validator,
    this.keyboardType = TextInputType.number,  this.inputMaxLength, this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength:inputMaxLength,
      
       inputFormatters:inputFormatters??[],
      validator: validator,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        counterText: "",
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 22.h),
        filled: filled,
        fillColor: fillcolor,
        hintText: hintText,
        hintStyle: hintStyle,
      ),
    );
  }
}
