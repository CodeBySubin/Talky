import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talky/core/utils/firebase_exception_handler.dart';
import 'package:talky/features/authentication/domain/usecases/login_user.dart';
import 'package:talky/features/authentication/domain/usecases/save_user.dart';
import 'package:talky/features/authentication/domain/usecases/send_otp.dart';
import 'package:talky/features/authentication/domain/usecases/verify_otp.dart';
import 'package:talky/features/authentication/presentation/bloc/event.dart';
import 'package:talky/features/authentication/presentation/bloc/state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SendOtp sendOtp;
  final VerifyOtp verifyOtp;
  final SaveUser saveUser;
  final LoginUser loginUser;

  AuthBloc(
    this.saveUser,
    this.loginUser, {
    required this.sendOtp,
    required this.verifyOtp,
  }) : super(AuthState.initial()) {
    on<SendOtpEvent>(_sendOtp);
    on<VerifyOtpEvent>(_verifyOtp);
    on<SaveUserEvent>(_saveUser);
    on<LoginWithMobileEvent>(_loginWithUsername);
  }

  Future<void> _sendOtp(SendOtpEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await sendOtp(event.phoneNumber);
      emit(AuthState.otpsend());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.failure(getFirebaseAuthErrorMessage(e)));
    } catch (e) {
      emit(AuthState.failure("Something went wrong. Please try again."));
    }
  }

  Future<void> _verifyOtp(VerifyOtpEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await verifyOtp(event.smsCode);
      emit(AuthState.success());
    } on FirebaseAuthException catch (e) {
      emit(AuthState.failure(getFirebaseAuthErrorMessage(e)));
    } catch (e) {
      emit(AuthState.failure("Something went wrong. Please try again."));
    }
  }

  Future<void> _saveUser(SaveUserEvent event, Emitter<AuthState> emit) async {
    emit(AuthState.loading());
    try {
      await saveUser(event.name, event.phone, event.passowrd);
      emit(AuthState.registerSuccess());
    } catch (e) {
      emit(AuthState.failure("Failed to save user"));
    }
  }

  Future<void> _loginWithUsername(
    LoginWithMobileEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.loading());
    try {
      await loginUser(event.phone, event.password);
      emit(AuthState.success());
    } catch (e) {
      emit(AuthState.failure(e.toString()));
    }
  }
}
