import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talky/features/chat/domain/entities.dart';
import 'package:talky/features/chat/presentation/bloc/chat_bloc.dart';
import 'package:talky/features/chat/presentation/bloc/chat_event.dart';
import 'package:talky/features/chat/presentation/bloc/chat_state.dart';





class ChatScreen extends StatefulWidget {
  final String user;

  ChatScreen({super.key, required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController controller = TextEditingController();

@override
  void initState() {
    context.read<ChatBloc>().add(ChatEvent.tokengenrate(widget.user));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chat')),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(child: Text('No messages')),
                  loaded: (messages) => ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final msg = messages[index];
                      return ListTile(
                        title: Text(msg.userId),
                        subtitle: Text(msg.message),
                        trailing: Text(msg.timestamp.toIso8601String()),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(controller: controller),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    final message = ChatMessage(
                      userId: 'Me',
                      message: controller.text,
                      timestamp: DateTime.now(),
                    );
                    context.read<ChatBloc>().add(ChatEvent.send(message));
                    controller.clear();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
