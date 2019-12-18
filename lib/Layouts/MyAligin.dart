import 'package:flutter/material.dart';

class MyAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('align布局'),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: FractionalOffset(0.0, 0.0),
            child: Image.asset('images/iu.jpg'),
          ),
          Align(
            alignment: FractionalOffset(1.0, 0.0),
            child: Image.asset('images/iu-001.jpg'),
          ),
          Align(
            alignment: FractionalOffset.center,
            child: Image.asset('images/iu-002.jpg'),
          ),
          Align(
            alignment: FractionalOffset.bottomLeft,
            child: Image.asset('images/iu-006.jpg'),
          ),
          Align(
            alignment: FractionalOffset.bottomRight,
            child: Image.asset('images/iu-002.jpg'),
          ),
        ],
      ),
    );
  }
}