import 'package:flutter/material.dart';
import 'package:test_task_app/core/app/styles/text_styles.dart';
import 'package:test_task_app/core/app/themes/app_colors.dart';
import 'package:test_task_app/domain/models/message_model.dart';
import '../../../core/constants/chat_constants.dart';
import '../widget/chat_input_widget.dart';
import '../widget/chat_item.dart';
import '../widget/chat_user.dart';
import '../widget/contact_mode_widget.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.instance.chatBackroundColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.instance.chatBackroundColor,
        title: Text(
          chatText,
          style: AppTextStyles.chatAppBarStyle,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Icon(
              Icons.favorite,
              color: AppColors.instance.favoriteIconColor,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 9,
              child: Container(
                color: AppColors.instance.chatBackroundColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //* Receiver User....
                      const ChatUser(),
                      const SizedBox(height: 10),
                      //* Add user to Contats...
                      Text(
                        addMyContacts,
                        style: AppTextStyles.addMyContactsStyle,
                      ),
                      //* Messages of user....
                      Expanded(
                        child: ListView(
                          children: [
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(top: 30),
                              child: Text(
                                fakeMessageList[0].date.toString(),
                                textAlign: TextAlign.center,
                                style: AppTextStyles.messageTimeStyle,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ChatItemWidget(
                              message: fakeMessageList[0].message,
                              seenTime: fakeMessageList[0].seenTime,
                            ),
                            ChatItemWidget(
                              message: fakeMessageList[1].message,
                              messageType: MessageType.receiver,
                            ),
                            const SizedBox(
                              height: 22,
                            ),
                            Divider(
                              color: AppColors.instance.chatSendButtonColor
                                  .withOpacity(0.18),
                              height: 0,
                            ),
                            //* Message 2
                            Container(
                              width: double.infinity,
                              margin: const EdgeInsets.only(top: 20),
                              child: Text(
                                fakeMessageList[0].date.toString(),
                                textAlign: TextAlign.center,
                                style: AppTextStyles.messageTimeStyle,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ChatItemWidget(
                              message: fakeMessageList[1].message,
                              seenTime: fakeMessageList[1].seenTime,
                            ),
                            ChatItemWidget(
                              message: fakeMessageList[0].message,
                              messageType: MessageType.receiver,
                            ),
                          ],
                        ),
                      ),
                      //* Chat Info to contact....
                      Text(
                        chatInfo,
                        style: AppTextStyles.chatInfoStyle,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      //* Contact Types....
                      const Row(
                        children: [
                          ContactModeWidget(
                            contactModename: contactMode1,
                            icon: Icons.call_outlined,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ContactModeWidget(
                            contactModename: contactMode2,
                            icon: Icons.north_east,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          ContactModeWidget(
                            contactModename: contactMode3,
                            icon: Icons.north_east,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //* Send message and files....
            const ChatInputWidget(),
          ],
        ),
      ),
    );
  }
}
