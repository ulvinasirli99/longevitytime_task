import 'package:flutter/material.dart';
import 'package:test_task_app/core/app/styles/text_styles.dart';
import 'package:test_task_app/core/app/themes/app_colors.dart';
import 'package:test_task_app/core/constants/chat_constants.dart';

class ChatUser extends StatelessWidget {
  const ChatUser({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    profileImageUrl,
                  ),
                )),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatUserName,
                style: AppTextStyles.chatUserStyle,
              ),
              Text(
                chatStatus,
                style: AppTextStyles.kInputTextStyle.copyWith(
                  color: AppColors.instance.chatStatusColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
