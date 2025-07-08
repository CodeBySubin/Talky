import 'package:talky/features/users/domain/entity/user_entity.dart';
import 'package:talky/features/users/domain/repository/user_repository.dart';

class FetchUsers{
  final UserRepository repository;
  FetchUsers(this.repository);

  Future<List<UserEntity>> call() => repository.fetchUsers();
}