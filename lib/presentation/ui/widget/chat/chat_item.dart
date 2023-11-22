import 'package:flutter/material.dart';
import 'package:test_task_app/core/app/styles/text_styles.dart';
import 'package:test_task_app/core/app/themes/app_colors.dart';
import 'package:test_task_app/domain/models/message_model.dart';

class ChatItemWidget extends StatelessWidget {
  final MessageType? messageType;
  final String? message;
  final String? seenTime;
  const ChatItemWidget(
      {super.key, this.messageType, this.message, this.seenTime});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: messageType == MessageType.receiver
          ? Alignment.centerLeft
          : Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 108,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColors.instance.chatSendButtonColor.withOpacity(0.18),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            child: Text(
              message ?? "",
              style: AppTextStyles.messageItemTextStyles,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          if (seenTime != null)
            Text(
              'seen · $seenTime ',
              style: AppTextStyles.messageTimeStyle,
            ),
        ],
      ),
    );
  }
}
