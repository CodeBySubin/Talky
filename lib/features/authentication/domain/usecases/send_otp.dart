import 'package:talky/features/authentication/data/repository/auth_repositor_impl.dart';

class SendOtp {
  final AuthRepository repository;
  SendOtp(this.repository);
  Future<void> call(String phoneNumber) {
    return repository.sendOtp(phoneNumber);
  }
}
