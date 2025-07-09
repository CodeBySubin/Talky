import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:talky/core/constants/constants.dart';
import 'package:talky/core/routes/app_routes.dart';
import 'package:talky/core/utils/secure_storage.dart';
import 'package:talky/core/widgets/app_title.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) async {
      final token = await SecureStorageHelper.getToken('user');
      if (mounted) {
        if (token != null) {
          context.push(AppRoutes.users);
        } else {
          context.push(AppRoutes.login);
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(child: AppTitle()),
    );
  }
}
