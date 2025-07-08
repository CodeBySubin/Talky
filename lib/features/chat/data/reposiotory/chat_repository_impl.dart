import 'package:talky/features/chat/data/datasource/chat_data_source.dart';
import 'package:talky/features/chat/data/model/chat_model.dart';
import 'package:talky/features/chat/domain/entities.dart';
import 'package:talky/features/chat/domain/repositories.dart';

class AgoraChatRepositoryImpl implements AgoraChatRepository {
  final AgoraChatDatasource datasource;

  AgoraChatRepositoryImpl(this.datasource);

  @override
  Future<void> sendMessage(ChatMessage message) async {
    final model = ChatMessageModel(
      userId: message.userId,
      message: message.message,
      timestamp: message.timestamp,
    );
    await datasource.sendMessage(model);
  }

  @override
  Stream<ChatMessage> getMessages() {
    return datasource.listenToMessages().map((model) => ChatMessage(
          userId: model.userId,
          message: model.message,
          timestamp: model.timestamp,
        ));
  }
}