import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talky/di/dependency_injection.dart';
import 'package:talky/features/users/domain/usecase/user_usecase.dart';
import 'package:talky/features/users/presentation/bloc/user_state.dart';

import '../bloc/user_bloc.dart';
import '../bloc/user_event.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
@override
  void initState() {
  context.read<UserBloc>().add(const UserEvent.getUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Users")),
      body: BlocBuilder<UserBloc, UserSatate>(
        builder: (context, state) {
          return state.whenOrNull(
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded:
                (users) => ListView.builder(
                  itemCount: users.length,
                  itemBuilder:
                      (_, i) => ListTile(
                        title: Text(users[i].name),
                        subtitle: Text(users[i].phone),
                      ),
                ),
            // error: (message) => Center(child: Text("Error: $message")),
          ) ?? const SizedBox.shrink();
        },
      ),
    );
  }
}
