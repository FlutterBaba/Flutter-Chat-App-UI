import 'package:flutter/material.dart';
import 'package:flutter_chat_app_ui/model/message_model.dart';
import 'package:flutter_chat_app_ui/model/user_model.dart';
import 'package:flutter_chat_app_ui/widgets/bottom.dart';

class ChatPage extends StatefulWidget {
  final UserModel user;

  const ChatPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  _buildMessage(MessageModel message, bool isMe) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            isMe
                ? Container()
                : Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.user.imageUrl),
                      ),
                    ),
                  ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              margin: isMe
                  ? EdgeInsets.only(top: 8.0, bottom: 8.0)
                  : EdgeInsets.only(top: 8.0, bottom: 8.0),
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              width: MediaQuery.of(context).size.width * 0.75,
              decoration: BoxDecoration(
                color:
                    isMe ? Theme.of(context).primaryColor : Color(0xffEEF1FF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    message.text,
                    style: TextStyle(
                      color: isMe ? Colors.white : Colors.black,
                      fontSize: 16.0,
                      fontFamily: "GeorgeCafeRegular",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            isMe
                ? Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                            image: AssetImage("images/profile.png"))),
                  )
                : Container(),
          ],
        )
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 70.0,
      decoration: BoxDecoration(
        color: Color(0xffEEF1FF),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 25,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Expanded(
            child: TextFormField(
              textCapitalization: TextCapitalization.sentences,
              onChanged: (value) {},
              decoration:
                  InputDecoration.collapsed(hintText: "Type Your Message"),
            ),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.near_me,
                size: 25.0,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Bottom()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                widget.user.imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.user.name,
                                style: TextStyle(
                                  fontFamily: "GeorgeCafeRegular",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "Online",
                                style: TextStyle(
                                  fontFamily: "GeorgeCafeRegular",
                                  color: Colors.white60,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: MaterialButton(
                          color: Colors.white24,
                          elevation: 0,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Icon(
                            Icons.call_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        child: MaterialButton(
                          color: Colors.white24,
                          elevation: 0,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Icon(
                            Icons.video_call_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    child: ListView.builder(
                      reverse: true,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (BuildContext context, int index) {
                        final MessageModel message = messages[index];
                        final bool isMe =
                            message.sender.id == currentUserModel.id;
                        return _buildMessage(message, isMe);
                      },
                    ),
                  ),
                ),
              ),
              _buildMessageComposer(),
            ],
          ),
        ),
      ),
    );
  }
}
