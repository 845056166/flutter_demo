import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class MyCupertinoDialog extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoDialog'),
      ),
      body: Center(
        child: CupertinoAlertDialog(
          title: Text('提示'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('是否删除？'),
                Text('一旦删除不可撤销')
              ],
            ),
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text('确定'),
              onPressed: () {},
            ),
            CupertinoDialogAction(
              child: Text('取消'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),);
  }
}