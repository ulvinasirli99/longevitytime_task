import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppTextStyles {

  static TextStyle get kInputTextStyle => TextStyle(
        color: AppColors.instance.textBlackColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.15,
      );

  static TextStyle get chatAppBarStyle => TextStyle(
        color: AppColors.instance.textBlackColor,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.31,
      );

  static TextStyle get chatInputHintStyle => TextStyle(
        color: AppColors.instance.textBlackColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.23,
      );

  static TextStyle get chatUserStyle => TextStyle(
        color: AppColors.instance.textBlackColor,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.31,
      );

  static TextStyle get addMyContactsStyle => TextStyle(
        color: AppColors.instance.chatSendButtonColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.23,
      );

  static TextStyle get messageTimeStyle => TextStyle(
        color: AppColors.instance.messageTimeColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.15,
      );

  static TextStyle get messageItemTextStyles => TextStyle(
        color: AppColors.instance.textBlackColor,
        fontSize: 18,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.23,
      );

  static TextStyle get chatInfoStyle => TextStyle(
        color: AppColors.instance.messageTimeColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.20,
      );

  static TextStyle get contactModeStyle => TextStyle(
        color: AppColors.instance.chatSendButtonColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.20,
      );
}
