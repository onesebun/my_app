import 'package:flutter/material.dart';
import '../model/post.dart';

class FriendsList extends StatelessWidget {
  FriendsList();
  Widget _listItemBuilber(BuildContext context, int index) {
    return ListTile(
      title: Text(posts[index].name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilber,
    );
  }
}
