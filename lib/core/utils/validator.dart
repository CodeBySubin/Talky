import 'package:flutter/material.dart';

class Validator {
  static String? validatePhoneNumber(String value) {
    if (value.isEmpty) return 'Phone number is required';
    if (!RegExp(r'^\+?[0-9]{10,13}$').hasMatch(value)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) return 'password is required';
    if (value.length < 6) return 'passowrd must be 6 digits';
    if (value.length > 30) return 'passowrd must be below 30';
    return null;
  }

  static String? validateOtp(String value) {
    if (value.isEmpty) return "Please enter OTP";
    if (value.length < 6)return "OTP must be at least 6 digits";
    return null;
  }

  static String? validateName(String value) {
    if (value.isEmpty) return "Please enter your name";
    if (value.length < 3) return "Name must be minimum 3 characters";
    return null;
  }

  static bool validate(GlobalKey<FormState> formKey, VoidCallback onSuccess) {
    final isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {
      onSuccess();
    }
    return isValid;
  }
}
