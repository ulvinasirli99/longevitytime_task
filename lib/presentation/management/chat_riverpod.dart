import 'package:riverpod/riverpod.dart';
import 'package:test_task_app/infrastructure/data/chat_data.dart';

class ChatRiverpodManagement {
  final chatRiverpod = Provider<ChatData>((ref) => ChatData());
}
