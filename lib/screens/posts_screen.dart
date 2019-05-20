import 'package:flutter/material.dart';

class PostsScreen extends StatelessWidget {
  PostsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        ),
        title: Text('貼文串'),
      ),
      body: Text('貼文串'),
    );
  }
}
