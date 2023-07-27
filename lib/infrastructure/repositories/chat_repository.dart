import '../../domain/models/message_model.dart';

abstract class ChatRepository {
  Future<MessageModel> getUserMessage();
}
