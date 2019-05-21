import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen();

  List<String> strItems = <String>[
    '個人檔案',
    '我的帳號',
    '隱私設定',
    '移動帳號設定',
    'K33P',
    '貼圖',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.perm_identity),
    new Icon(Icons.account_box),
    new Icon(Icons.lock),
    new Icon(Icons.verified_user),
    new Icon(Icons.cloud_download),
    new Icon(Icons.sentiment_very_satisfied),
  ];

  Widget _listItemBuilber(BuildContext context, int index) {
    return ListTile(
      leading: iconItems[index],
      title: Text(strItems[index]),
      trailing: Icon(Icons.keyboard_arrow_right),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(null),
          title: Text('設定'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: ListView.builder(
            itemCount: strItems.length, itemBuilder: _listItemBuilber));
  }
}
