import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_task_app/presentation/management/chat_riverpod.dart';

class TestScreen extends ConsumerWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiService = ref.watch(ChatRiverpodManagement().chatRiverpod);
    return FutureBuilder(
      future: apiService.getUserMessage(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return const Column(
          children: [],
        );
      },
    );
  }
}
