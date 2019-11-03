import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Container容器布局')
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 10.0,color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/iu.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 10.0,color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/iuAvatar.jpg'),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 10.0,color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/iu-002.jpg'),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(width: 10.0,color: Colors.blueGrey),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))
                    ),
                    margin: EdgeInsets.all(4.0),
                    child: Image.asset('images/iu-006.jpg'),
                  ),
                )
              ],
            )
          ],
        ),
      ),);
  }
}
