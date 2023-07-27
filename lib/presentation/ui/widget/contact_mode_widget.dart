import 'package:flutter/material.dart';
import 'package:test_task_app/core/app/styles/text_styles.dart';
import 'package:test_task_app/core/app/themes/app_colors.dart';

class ContactModeWidget extends StatelessWidget {
  final String contactModename;
  final IconData icon;
  const ContactModeWidget({
    super.key,
    required this.contactModename,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        children: [
          Text(
            contactModename,
            style: AppTextStyles.contactModeStyle,
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
            icon,
            size: 24,
            color: AppColors.instance.chatSendButtonColor,
          ),
        ],
      ),
    );
  }
}
