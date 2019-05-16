import 'package:flutter/material.dart';

class FriendsList extends StatelessWidget {
  const FriendsList();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Friend 1'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Friend 2'),
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Friend 3'),
        ),
      ],
    );
  }
}
