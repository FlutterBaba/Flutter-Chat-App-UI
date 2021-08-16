import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/widgets/friends.dart';
import 'package:flutter_chat_app_ui/widgets/recent_chats.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Image.asset("images/menu.png"),
        centerTitle: true,
        title: Text(
          "MESSAGES",
          style: TextStyle(
            fontFamily: "GeorgeCafeRegular",
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                child: Image.asset("images/profile.png"),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Friends(),
          RecentChats(),
        ],
      ),
    );
  }
}
