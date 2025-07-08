import 'package:firebase_auth/firebase_auth.dart';

String getFirebaseAuthErrorMessage(FirebaseAuthException e) {
  if (e.message!.contains("BILLING_NOT_ENABLED ")) {
    return "billing is not enabled";
  }
  switch (e.code) {
    case 'invalid-verification-code':
      return 'The verification code is invalid.';
    case 'invalid-verification-id':
      return 'The verification ID is invalid. Please retry the OTP process.';
    case 'user-disabled':
      return 'This user account has been disabled.';
    case 'user-not-found':
      return 'No user found for the provided credentials.';
    case 'wrong-password':
      return 'The password is incorrect.';
    case 'email-already-in-use':
      return 'An account already exists with this email.';
    case 'invalid-email':
      return 'The email address is not valid.';
    case 'operation-not-allowed':
      return 'This sign-in method is not enabled.';
    case 'too-many-requests':
      return 'Too many attempts. Try again later.';
    case 'network-request-failed':
      return 'Please check your internet connection.';
    case 'channel-error':
      return 'billing is not enabled';
    default:
      return 'An unexpected error occurred. Please try again.';
  }
}
