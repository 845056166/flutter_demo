

import 'package:flutter/material.dart';

class MyConstrainedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('constrainedBox'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 150.0,
          minHeight: 150.0,
          maxHeight: 150.0,
          maxWidth: 220.0
        ),
        child: Container(
          width: 300.0,
          height: 220.0,
          color: Colors.green,
        ),
      ),
    );
  }
}

class MylimitedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('constrainedBox'),
      ),
      body: Row(
        children: <Widget>[
          Container(
            color: Colors.grey,
            width: 100.0,
          ),
          LimitedBox(
            maxWidth: 150.0,
            child: Container(
              width: 250.0,
              color: Colors.lightGreen,
            ),
          )
        ],
      )
    );
  }
}

class MyAspectRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('constrainedBox'),
      ),
      body: Container(
        height: 200.0,
        color: Colors.yellowAccent,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            color: Colors.yellowAccent,
          ),
        ),
      )
    );
  }
}
class MyFractionalSizeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('constrainedBox'),
      ),
      body: Container(
        height: 200.0,
        color: Colors.blueGrey,
        width: 200.0,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 1.5,
          alignment: Alignment.topLeft,
          child: Container(
            color: Colors.yellowAccent,
          ),
        ),
      )
    );
  }
}