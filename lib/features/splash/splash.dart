import 'package:flutter/material.dart';
import 'package:talky/core/constants/constants.dart';
import 'package:talky/core/widgets/app_title.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(child: AppTitle()),
    );
  }
}
