import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key, this.selectedIndex, this.onTap}) : super(key: key);
  int selectedIndex;
  final Function onTap;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _BottomNavBarState();
  }
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.perm_identity),
          title: Text('好友'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text('聊天'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.schedule),
          title: Text('貼文串'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          title: Text('通話'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_balance_wallet),
          title: Text('錢包'),
        ),
      ],
      currentIndex: widget.selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: widget.onTap,
    );
  }
}
