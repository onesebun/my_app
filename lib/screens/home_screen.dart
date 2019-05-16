import 'package:flutter/material.dart';
import 'package:my_app/widgets/friends_list.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FriendsList(),
    Text(
      '聊天',
      style: optionStyle,
    ),
    Text(
      '貼文串',
      style: optionStyle,
    ),
    Text(
      '通話',
      style: optionStyle,
    ),
    Text(
      '錢包',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Visibility(
            child: IconButton(
              icon: Icon(_selectedIndex == 0
                  ? Icons.search
                  : _selectedIndex == 1 ? Icons.edit : null),
              onPressed: () {},
            ),
            visible: _selectedIndex == 0 || _selectedIndex == 1 ? true : false,
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
