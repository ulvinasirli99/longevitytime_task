import 'package:flutter/material.dart';
import 'package:test_task_app/core/app/styles/text_styles.dart';
import 'package:test_task_app/core/app/themes/app_colors.dart';
import 'package:test_task_app/core/constants/chat_constants.dart';


class ChatInputWidget extends StatelessWidget {
  const ChatInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        color: AppColors.instance.white,
        width: double.infinity,
        height: 75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.attach_file),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: Container(
                      height: 38,
                      padding: const EdgeInsets.only(top: 16, left: 16),
                      decoration: BoxDecoration(
                        color: AppColors.instance.chatBackroundColor,
                        borderRadius: BorderRadius.circular(110),
                      ),
                      child: TextFormField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: chatHinText,
                          hintStyle: AppTextStyles.chatInputHintStyle,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send_outlined,
                      color: AppColors.instance.chatSendButtonColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
