import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Text('編輯'),
          onPressed: () {},
        ),
        title: Text('聊天'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.create),
            onPressed: () {},
          )
        ],
      ),
      body: Text('聊天'),
    );
  }
}
