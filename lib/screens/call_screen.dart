import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  CallScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通話'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.contact_phone),
            onPressed: () {},
          )
        ],
      ),
      body: Text('通話'),
    );
  }
}
