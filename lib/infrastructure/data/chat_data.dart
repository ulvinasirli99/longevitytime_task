import 'package:test_task_app/domain/models/message_model.dart';
import 'package:test_task_app/infrastructure/repositories/chat_repository.dart';

class ChatData extends ChatRepository {
  @override
  Future<MessageModel> getUserMessage() {
    // TODO: implement getUserMessage
    throw UnimplementedError();
  }
}
