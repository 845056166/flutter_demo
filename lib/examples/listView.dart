import 'package:flutter/material.dart';

class myList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('横向列表')
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          height: 200.0,
          margin: EdgeInsets.symmetric(vertical: 20.0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 160.0,
                color: Colors.amber,
              ),
              Container(
                width: 160.0,
                color: Colors.red,
              ),
            ],
          ),
        ),
    );
  }
}