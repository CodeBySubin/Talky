import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:talky/core/network/firebas_api_client.dart';

import '../../data/repository/auth_repositor_impl.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _fireBaseAuth;
  final FirestoreApiClient _apiClient;
  AuthRepositoryImpl(this._fireBaseAuth, this._apiClient);

  String _verificationId = "";

  @override
  Future<void> sendOtp(String phoneNumber) async {
    final completer = Completer<void>();
    _fireBaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        await _fireBaseAuth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        completer.completeError(e);
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        completer.complete();
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
    );
    return completer.future;
  }


  @override
  Future<void> verifyOtp(String smsCode) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: smsCode,
    );
    await _fireBaseAuth.signInWithCredential(credential);
  }


  @override
  Future<void> saveUser(String name, String phone, String password) async {
    final user = _fireBaseAuth.currentUser;
    await _apiClient.setDocument(
      collectionPath: 'users',
      docId: user!.uid,
      data: {
        'uid': user.uid,
        'name': name,
        'phone': phone,
        'password': password,
        'createdAt': FieldValue.serverTimestamp(),
      },
    );
  }

  @override
  Future<void> loginWithUsername(String phone, String password) async {
    final users = await _apiClient.getCollection(collectionPath: 'users');
    final match = users.firstWhere(
      (user) => user['phone'] == phone && user['password'] == password,
    );
    if (match.isEmpty) {
      throw Exception("Invalid phone or password");
    }
  }
}
