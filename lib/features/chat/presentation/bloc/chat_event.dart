import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talky/features/chat/domain/entities.dart';
part 'chat_event.freezed.dart';

@freezed
abstract class ChatEvent with _$ChatEvent {
  const factory ChatEvent.send(ChatMessage message) = ChatSend;
  const factory ChatEvent.receive(ChatMessage message) = ChatReceive;
    const factory ChatEvent.tokengenrate(String userid) = tokengen;

}