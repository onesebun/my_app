import 'package:flutter/cupertino.dart';
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
            onPressed: () {
              _settingModalBottomSheet(context);
            },
          )
        ],
      ),
      body: Text('聊天'),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          actions: <Widget>[
            CupertinoActionSheetAction(
              child: Text('建立聊天'),
              onPressed: () {},
            ),
            CupertinoActionSheetAction(child: Text('建立群組'), onPressed: () {}),
          ],
          cancelButton: CupertinoActionSheetAction(
              child: Text('取消'),
              onPressed: () {
                Navigator.pop(context);
              }),
        );
      });
}
