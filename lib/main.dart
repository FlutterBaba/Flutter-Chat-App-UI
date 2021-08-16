import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_app_ui/pages/message_page.dart';
import 'package:flutter_chat_app_ui/widgets/bottom.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xff5879EE),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Flutter Chat App UI',
      theme: ThemeData(
        primaryColor: Color(0xff5879EE),
        accentColor: Color(0xff5879EE),
      ),
      home: Bottom(),
    );
  }
}
