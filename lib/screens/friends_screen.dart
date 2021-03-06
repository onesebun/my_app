import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/post.dart';
import '../widgets/friends_list.dart';
import '../widgets/user_profile.dart';

import './settings_screen.dart';
import './add_friend_screen.dart';

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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                    fullscreenDialog: true),
              );
              // Navigator.push(
              //   context,
              //   CupertinoPageRoute(
              //     fullscreenDialog: true,
              //     builder: (context) => SettingsScreen()
              //   )
              // );
            },
          ),
          title: Text('好友'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person_add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AddFriendScreen(),
                      fullscreenDialog: true),
                );
              },
            )
          ],
        ),
        // body: Container(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     children: <Widget>[
        //       Flexible(
        //         child: FriendsList(),
        //       ),
        //     ],
        //   ),
        // )
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: FriendsList(),
              ),
            ],
          ),
        )
        );
  }
}
