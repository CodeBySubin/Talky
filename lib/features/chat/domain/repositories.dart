
import 'package:talky/features/chat/domain/entities.dart';

abstract class AgoraChatRepository {
  Future<void> sendMessage(ChatMessage message);
  Stream<ChatMessage> getMessages();
}