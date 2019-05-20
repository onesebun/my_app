import 'package:flutter/material.dart';
import '../model/post.dart';
import '../widgets/friends_list.dart';

class FriendsScreen extends StatelessWidget {
  FriendsScreen();
  Widget _listItemBuilber(BuildContext context, int index) {
    return ListTile(
      title: Text(posts[index].name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
        title: Text('好友'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () {},
          )
        ],
      ),
      body: FriendsList(),
    );
  }
}
