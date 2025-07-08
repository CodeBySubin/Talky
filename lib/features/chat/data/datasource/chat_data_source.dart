import 'dart:async';
import 'package:agora_chat_sdk/agora_chat_sdk.dart';
import 'package:talky/features/chat/data/model/chat_model.dart';

class AgoraChatDatasource {
  final ChatClient client;

  AgoraChatDatasource(this.client);

  Future<void> sendMessage(ChatMessageModel message) async {
    final msg = ChatMessage.createTxtSendMessage(
      targetId: message.userId,
      content: message.message,
    );
    await client.chatManager.sendMessage(msg);
  }

  Stream<ChatMessageModel> listenToMessages() {
    final controller = StreamController<ChatMessageModel>.broadcast();

    client.chatManager.addEventHandler(
      'LISTENER_ID',
      ChatEventHandler(
        onMessagesReceived: (List<ChatMessage> messages) {
          for (var msg in messages) {
            if (msg.body is ChatTextMessageBody) {
              final text = (msg.body as ChatTextMessageBody).content;
              controller.add(ChatMessageModel(
                userId: msg.from ?? '',
                message: text,
                timestamp: DateTime.now(),
              ));
            }
          }
        },
      ),
    );

    return controller.stream;
  }
}
