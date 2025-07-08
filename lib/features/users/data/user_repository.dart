import 'package:talky/core/network/firebas_api_client.dart';
import 'package:talky/features/users/domain/entity/user_entity.dart';
import 'package:talky/features/users/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final FirestoreApiClient _apiClient;

  UserRepositoryImpl(this._apiClient);

  @override
  Future<List<UserEntity>> fetchUsers() async {
    final data = await _apiClient.getCollection(collectionPath: 'users');
    return data
        .map(
          (e) => UserEntity(uid: e["uid"], name: e['name'], phone: e['phone']),
        )
        .toList();
  }
}
