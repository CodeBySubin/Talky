import 'package:talky/features/chat/domain/entities.dart';
import 'package:talky/features/chat/domain/repositories.dart';

class ListenMessagesUseCase {
  final AgoraChatRepository repository;

  ListenMessagesUseCase(this.repository);

  Stream<ChatMessage> call() => repository.getMessages();
}