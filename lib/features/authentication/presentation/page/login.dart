import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:talky/core/constants/app_color.dart';
import 'package:talky/core/constants/app_strings.dart';
import 'package:talky/core/routes/app_routes.dart';
import 'package:talky/core/utils/toast.dart';
import 'package:talky/core/utils/validator.dart';
import 'package:talky/core/widgets/text_button.dart';
import 'package:talky/core/widgets/text_field.dart';
import 'package:talky/features/authentication/presentation/bloc/bloc.dart';
import 'package:talky/features/authentication/presentation/bloc/event.dart';
import 'package:talky/features/authentication/presentation/bloc/state.dart';
import 'package:talky/features/authentication/presentation/page/widgets/auth_background.dart';
import 'package:talky/features/authentication/presentation/page/widgets/have_account_button.dart'
    show haveAcoountButton;
import 'package:talky/features/authentication/presentation/page/widgets/otp_loader.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController mobilenumber = TextEditingController();
  final TextEditingController passowrd = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () => otpLoader(context),
          failure: (error) {
            context.pop();
            showToast(error);
          },
          success: () => context.pushReplacement(AppRoutes.chat),
        );
      },
      child: AuthBackground(
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              spacing: 30.h,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.loginToYourAccount,
                  style: TextStyle(color: AppColor.white, fontSize: 28.sp),
                ),
                TextFieldWidget(
                  keyboardType: TextInputType.number,
                  inputMaxLength: 10,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: mobilenumber,
                  hintText: AppStrings.mobileNumber,
                  validator: (val) => Validator.validatePhoneNumber(val!),
                ),
                TextFieldWidget(
                  controller: passowrd,
                  hintText: AppStrings.password,
                  validator: (val) => Validator.validatePassword(val!),
                ),
                Column(
                  children: [
                    textButton(
                      text: AppStrings.login,
                      onPressed: () {
                        Validator.validate(_formKey, () {
                          final username = "+91${mobilenumber.text.trim()}";
                          final password = passowrd.text.trim();
                          context.read<AuthBloc>().add(
                            AuthEvent.loginWithUsername(username, password),
                          );
                        });
                      },
                      size: Size(double.infinity, 70.h),
                    ),
                  ],
                ),

                haveAcoountButton(
                  onTap: () => context.pushReplacement(AppRoutes.register),
                  account: AppStrings.signUp,
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
