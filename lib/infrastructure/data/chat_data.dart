import 'dart:developer';

import 'package:test_task_app/domain/models/message_model.dart';
import 'package:test_task_app/domain/services/app_net.dart';
import 'package:test_task_app/infrastructure/repositories/chat_repository.dart';
import 'package:test_task_app/infrastructure/repositories/exception/custom_exception.dart';

class ChatData extends ChatRepository {
  @override
  Future<MessageModel> getUserMessage() async {
    // ignore: prefer_typing_uninitialized_variables
    var getUserMessage;
    try {
      getUserMessage = await AppNetwork().getRequest("/getMessage");
    } on CustomException catch (e) {
      log('$e.runtimeType.toString() $e.message');
      getUserMessage = MessageModel(message: e.toString());
    }
    return MessageModel.fromJson(getUserMessage);
  }
}
