import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/model/message_model.dart';

class Friends extends StatefulWidget {
  const Friends({Key? key}) : super(key: key);

  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          final MessageModel chat = chats[index];
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Container(
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: Image.asset(
                    "images/search.png",
                    scale: 0.9,
                  ),
                ),
              ),
            );
          }
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  width: 50,
                  child: Image.asset(
                    chat.sender.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
