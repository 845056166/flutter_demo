import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CuperntinoActivityIndicator'),),
        body: Center(
          child: CupertinoActivityIndicator(
            radius: 60.0,
          ),
        ),
    );
  } 
}