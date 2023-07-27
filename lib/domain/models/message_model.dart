enum MessageType {
  receiver,
  sender,
}

class MessageModel {
  final int? userId;
  final String? message;
  final String? date;
  final String? seenTime;
  final MessageType? messageType;

  MessageModel(
    this.message,
    this.userId,
    this.messageType,
    this.date,
    this.seenTime,
  );
}
