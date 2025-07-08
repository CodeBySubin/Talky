import 'package:flutter/material.dart';
import 'package:talky/core/styles/app_styles.dart';

import '../constants/constants.dart';

class AppTitle extends StatelessWidget {
  final TextStyle? titleStyle;
  const AppTitle({super.key, this.titleStyle});

  @override
  Widget build(BuildContext context) {
    final effectiveTitleStyle = titleStyle ?? AppStyles.splashText;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(AppStrings.appTitle, style: effectiveTitleStyle),
        Text(".", style: effectiveTitleStyle.copyWith(color: AppColor.black)),
      ],
    );
  }
}
