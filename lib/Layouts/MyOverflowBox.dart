import 'package:flutter/material.dart';

class MyOverflowBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Container(
        color: Colors.green,
        width: 200.0,
        height: 200.0,
        padding: EdgeInsets.all(50.0),
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxHeight: 400.0,
          maxWidth: 400.0,
          child: Container(
            color: Colors.blueGrey,
            width: 300.0,
            height: 300.0,
          ),
        ),
      ),
    );
  }
}

class MySizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('宽高尺寸处理'),
      ),
      body: SizedBox(
        width: 200.0,
        height: 300.0,
        child: Card(
          child: Text(
            'SizesBox',
            style: TextStyle(
              fontSize: 36.0,
            )
          ),
        ),
      ),
    );
  }
}