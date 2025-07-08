import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:talky/features/chat/domain/entities.dart';
import 'package:talky/features/chat/domain/usecases/listeen_message.dart';
import 'package:talky/features/chat/domain/usecases/send_message.dart';
import 'package:talky/features/chat/presentation/bloc/chat_event.dart';
import 'package:talky/features/chat/presentation/bloc/chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final SendMessageUseCase sendMessage;
  final ListenMessagesUseCase listenMessages;

  List<ChatMessage> _messages = [];

  ChatBloc(this.sendMessage, this.listenMessages) : super(const ChatInitial()) {
    on<ChatSend>(_onSend);
    on<ChatReceive>(_onReceive);

    listenMessages().listen((msg) => add(ChatEvent.receive(msg)));
  }

  void _onSend(ChatSend event, Emitter<ChatState> emit) async {
    await sendMessage(event.message);
    _messages.add(event.message);
    emit(ChatState.loaded(List.from(_messages)));
  }

  void _onReceive(ChatReceive event, Emitter<ChatState> emit) {
    _messages.add(event.message);
    emit(ChatState.loaded(List.from(_messages)));
  }
}