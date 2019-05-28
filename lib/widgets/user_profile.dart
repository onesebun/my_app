import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: FractionalOffset.center,
      child: ListTile(
          contentPadding: EdgeInsets.all(20),
          leading: Icon(Icons.perm_identity),
          title: Text('奕圻(17)'),
          subtitle: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('小丸子的同學'),
                Text('K33P'),
              ])),
    );
  }
}
