import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talky/features/users/domain/usecase/user_usecase.dart';
import 'package:talky/features/users/presentation/bloc/user_event.dart';
import 'package:talky/features/users/presentation/bloc/user_state.dart';

class UserBloc extends Bloc<UserEvent, UserSatate> {
  final FetchUsers _fetchUsers;
  UserBloc(this._fetchUsers) : super(const UserSatate.initial()) {
    on<GetUSers>(_getUsers);
  }

  Future<void> _getUsers(UserEvent event, Emitter<UserSatate> emit) async {
    emit(UserSatate.loading());
    final users = await _fetchUsers();
    emit(UserSatate.loaded(users));
  }
}
