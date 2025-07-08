import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:talky/features/chat/domain/entities.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = ChatInitial;
  const factory ChatState.loaded(List<ChatMessage> messages) = ChatLoaded;
}
