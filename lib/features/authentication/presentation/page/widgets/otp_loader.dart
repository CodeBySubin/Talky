import 'package:flutter/material.dart';
import 'package:talky/core/constants/constants.dart';

Future<T?> otpLoader<T>(BuildContext context) {
  return showDialog<T>(
    context: context,
    barrierDismissible: false,
    builder: (_) => const Center(
      child: CircularProgressIndicator(
        color: AppColor.white,
      ),
    ),
  );
}
