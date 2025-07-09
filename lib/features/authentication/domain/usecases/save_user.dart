import '../../data/auth_repositor_impl.dart';

class SaveUser {
  final AuthRepository repository;
  SaveUser(this.repository);
  Future<void> call(String name, String phone, String password) {
    return repository.saveUser(name, phone, password);
  }
}
