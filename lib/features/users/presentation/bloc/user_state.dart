
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talky/features/users/domain/entity/user_entity.dart';
part 'user_state.freezed.dart';
@freezed
class UserSatate with _$UserSatate {
  const factory UserSatate.initial() = Intial;
  const factory UserSatate.loading() = Loading;
  const factory UserSatate.loaded(List<UserEntity> users) = Loaded;
}
