import 'package:flutter/material.dart';
import '../model/post.dart';
import '../widgets/user_profile.dart';
import '../widgets/services_list.dart';

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);
}

class FriendsList extends StatelessWidget {
  FriendsList();

  Widget _listItemBuilber(BuildContext context, int index) {
    return ListTile(
      title: Text(posts[index].name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        UserProfile(),
        ServicesList(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: posts.length,
          itemBuilder: _listItemBuilber,
        )
      ],
    );
  }
}
