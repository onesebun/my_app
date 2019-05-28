import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
  ServicesList();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0.0),
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.cloud_circle), Text('cloud')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.credit_card), Text('card')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.add_circle), Text('add')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.child_care), Text('child')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.cloud_circle), Text('cloud')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.credit_card), Text('card')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.add_circle), Text('add')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.child_care), Text('child')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.cloud_circle), Text('cloud')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.credit_card), Text('card')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.add_circle), Text('add')],
              )),
          Container(
              width: 50,
              child: Column(
                children: <Widget>[Icon(Icons.child_care), Text('child')],
              )),
        ],
      ),
    );
  }
}
