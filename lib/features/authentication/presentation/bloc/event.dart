import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.sendOtp(String phoneNumber) = SendOtpEvent;
  const factory AuthEvent.verifyOtp(String smsCode) =
      VerifyOtpEvent;
  const factory AuthEvent.saveUser(String name, String phone, String passowrd) = SaveUserEvent;
  const factory AuthEvent.loginWithUsername(String phone, String password) = LoginWithMobileEvent;

}
