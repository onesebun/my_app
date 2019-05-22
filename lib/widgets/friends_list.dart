import 'package:flutter/material.dart';
import '../model/post.dart';

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
  final items = List<ListItem>.generate(
    1200,
    (i) => i % 6 == 0
        ? HeadingItem("Heading $i")
        : MessageItem("Sender $i", "Message body $i"),
  );
  // Widget _listItemBuilber(BuildContext context, int index) {
  //   return ListTile(
  //     title: Text(posts[index].name),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: posts.length,
    //   itemBuilder: _listItemBuilber,
    // );
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        if (item is HeadingItem) {
          return ListTile(
            title: Text(
              item.heading,
              style: Theme.of(context).textTheme.headline,
            ),
          );
        } else if (item is MessageItem) {
          return ListTile(
            title: Text(item.sender),
            subtitle: Text(item.body),
          );
        }
      },
    );
  }
}
