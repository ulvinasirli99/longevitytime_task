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

  MessageModel({
    this.message,
    this.userId,
    this.messageType,
    this.date,
    this.seenTime,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
        userId: json["userId"],
        message: json["message"],
        date: json["date"],
        seenTime: json["seenTime"],
        messageType: json["messageType"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "message": message,
        "date": date,
        "seenTime": seenTime,
        "messageType": messageType,
      };
}
