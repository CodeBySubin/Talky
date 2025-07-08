import 'package:talky/features/users/domain/entity/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> fetchUsers();
}