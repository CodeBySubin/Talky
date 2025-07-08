import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:talky/core/routes/app_routes.dart';
import 'package:talky/core/utils/toast.dart';
import 'package:talky/core/utils/validator.dart';
import 'package:talky/core/widgets/text_button.dart';
import 'package:talky/core/widgets/text_field.dart';
import 'package:talky/features/authentication/domain/entities/auth_user.dart';
import 'package:talky/features/authentication/presentation/bloc/bloc.dart';
import 'package:talky/features/authentication/presentation/bloc/event.dart';
import 'package:talky/features/authentication/presentation/bloc/state.dart';
import 'package:talky/features/authentication/presentation/page/widgets/auth_background.dart';
import 'package:talky/features/authentication/presentation/page/widgets/have_account_button.dart';
import 'package:talky/features/authentication/presentation/page/widgets/otp_loader.dart';

import '../../../../core/constants/constants.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    mobileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          otpsend: () {
            context.pop();
            showToast("Otp has been send to your mobile");
            final authUser = AuthUser(
              passwordController.text,
              '+91${mobileController.text}',
              nameController.text,
            );
            context.push(AppRoutes.otp, extra: authUser);
          },
          loading: () => otpLoader(context),
          failure: (error) {
            context.pop();
            showToast(error);
          },
        );
      },
      child: AuthBackground(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              spacing: 20.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.createYourAccount,
                  style: TextStyle(color: AppColor.white, fontSize: 28.sp),
                ),
                TextFieldWidget(
                  validator: (value) => Validator.validateName(value!),
                  hintText: AppStrings.name,
                  controller: nameController,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
                  ],
                  keyboardType: TextInputType.name,
                ),
                TextFieldWidget(
                  hintText: AppStrings.mobileNumber,
                  controller: mobileController,
                  inputMaxLength: 10,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  validator: (value) => Validator.validatePhoneNumber(value!),
                ),
                TextFieldWidget(
                  hintText: AppStrings.password,
                  controller: passwordController,
                  validator: (val) => Validator.validatePassword(val!),
                ),
                textButton(
                  size: Size(double.infinity, 70.h),
                  text: "register",
                  onPressed: () {
                    Validator.validate(_formKey, () {
                      context.read<AuthBloc>().add(
                        AuthEvent.sendOtp("+91${mobileController.text}"),
                      );
                    });
                  },
                ),
                haveAcoountButton(
                  onTap: () => context.pushReplacement(AppRoutes.login),
                  account: AppStrings.signIn,
                  title: AppStrings.donthaveAccount,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
