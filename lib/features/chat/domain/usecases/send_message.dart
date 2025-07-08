import 'package:talky/features/chat/domain/entities.dart';
import 'package:talky/features/chat/domain/repositories.dart';

class SendMessageUseCase {
  final AgoraChatRepository repository;

  SendMessageUseCase(this.repository);

  Future<void> call(ChatMessage message) => repository.sendMessage(message);
}
