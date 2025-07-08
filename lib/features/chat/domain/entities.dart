class ChatMessage {
  final String userId;
  final String message;
  final DateTime timestamp;

  ChatMessage({
    required this.userId,
    required this.message,
    required this.timestamp,
  });
}