import 'package:test_task_app/domain/models/message_model.dart';

const String chatText = "Chat";

const String chatHinText = "Leave a message";

const String profileImageUrl =
    "https://as2.ftcdn.net/v2/jpg/02/14/74/61/1000_F_214746128_31JkeaP6rU0NzzzdFC4khGkmqc8noe6h.jpg";

const String chatUserName = "Esther Howard";

const String chatStatus = "Online";

const String addMyContacts = "Add to my contacts  ↗";

List<MessageModel> fakeMessageList = [
  MessageModel("Hello", 1, MessageType.sender, '2020/Aug/24', '18:00'),
  MessageModel("Hi", 2, MessageType.receiver, '2020/Aug/25', '12:00'),
];

const String chatInfo =
    "Ester is not available to chat now, meanwhile you can leave a message or try other contacts:";

const String contactMode1 = "Call";
const String contactMode2 = "Whatssap";
const String contactMode3 = "Email";
