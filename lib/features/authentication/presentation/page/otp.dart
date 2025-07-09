import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:talky/core/routes/app_routes.dart';
import 'package:talky/core/utils/toast.dart';
import 'package:talky/core/utils/validator.dart';
import 'package:talky/features/authentication/domain/entities/auth_user.dart';
import 'package:talky/features/authentication/presentation/bloc/bloc.dart';
import 'package:talky/features/authentication/presentation/bloc/event.dart';
import 'package:talky/features/authentication/presentation/bloc/state.dart';
import 'package:talky/features/authentication/presentation/page/widgets/otp_loader.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class Otp extends StatefulWidget {
  final AuthUser user;
  const Otp({super.key, required this.user});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController otpController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(top: 70.h, bottom: 30.h),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppStrings.otp,
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30.sp,
                  ),
                ),
                SizedBox(height: 120.h),
                Pinput(
                  length: 6,
                  controller: otpController,
                  defaultPinTheme: PinTheme(
                    width: 54.w,
                    height: 66.h,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primaryColor),
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 54.w,
                    height: 66.h,
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  autofillHints: const [AutofillHints.oneTimeCode],
                  onCompleted:
                      (pin) => context.read<AuthBloc>().add(
                        AuthEvent.verifyOtp(otpController.text),
                      ),
                  forceErrorState: true,
                  validator: (val) => Validator.validateOtp(val!),
                ),
                Spacer(),
                Text(AppStrings.dontReceiveAnOtp),
                Text(
                  AppStrings.resendOtp,
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 20.h),
                BlocListener<AuthBloc, AuthState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      loading: () => otpLoader(context),
                      success:
                          () => context.read<AuthBloc>().add(
                            AuthEvent.saveUser(
                             widget.user.name,
                              widget.user.mobile,
                              widget.user.password,
                            ),
                          ),
                      registerSuccess:
                          () => context.pushReplacement(AppRoutes.users),
                      failure: (error) {
                        context.pop();
                        showToast(error);
                      },
                    );
                  },
                  child: textButton(
                    text: AppStrings.next,
                    onPressed: () {
                      Validator.validate(_formKey, () {
                        context.read<AuthBloc>().add(
                          AuthEvent.verifyOtp(otpController.text),
                        );
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
