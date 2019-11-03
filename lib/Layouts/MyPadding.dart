import 'package:flutter/material.dart';

class MyPadding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('padding填充布局'),
      ),
      body: Center(
        child: Container(
          width: 300.0,
          padding: EdgeInsets.all(60.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.green,
              width: 8.0
            ) 
          ),
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,
                width: 8.0
              )
            ),
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}