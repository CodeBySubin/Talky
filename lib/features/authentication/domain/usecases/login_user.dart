import 'package:talky/features/authentication/data/auth_repositor_impl.dart';

class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<void> call(String username, String password) {
    return repository.loginWithUsername(username, password);
  }
}
