import 'package:flutter/material.dart';

class SimpledialogDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('简单对话框'),
      ),
      body: Center(
        child: SimpleDialog(
          title: Text('对话框'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('第一行信息'),
              onPressed: () {
                print('你点了第一行');
              },
            ),
            SimpleDialogOption(
              child: Text('第二行信息'),
              onPressed: () {
                print('你点了第二行');
              },
            ),
          ],
        ),),
    );
  }
}