import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/constants.dart';

class AuthBackground extends StatelessWidget {
  final Widget body;
  const AuthBackground({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.splashBackground,
      body: Stack(
        children: [
          Positioned(
            top: -136,
            right: -136,
            child: Container(
              height: 422.h,
              width: 422.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.splashRoundOne.withValues(alpha: 0.05),
              ),
            ),
          ),
          Positioned(
            bottom: -380,
            left: -380,
            child: Container(
              height: 818.h,
              width: 818.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 40,
                  color: AppColor.splashRoundOne.withValues(alpha: 0.02),
                ),
              ),
            ),
          ),
          Center(
            child: body
          ),
        ],
      ),
    );
  }
}