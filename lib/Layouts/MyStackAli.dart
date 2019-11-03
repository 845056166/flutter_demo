import 'package:flutter/material.dart';

class MyStackAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('images/iuAvator.jpeg'),
            radius: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
            child: Text(
              '我是IU(李智恩)',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              )
            ),
          )
        ],
        )
      ),
    );
  }
}
class MyStackPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('定位布局'),),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset('images/iuAvator.jpeg'),
            Positioned(
              child: Text(
                '大家好！我是IU',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'serif',
                  color: Colors.white
                ),
              ),
              bottom: 10.0,
              right: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
class IndexStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Center(
        child: IndexedStack(
          index: 1,
          alignment: Alignment.topLeft,
          children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('images/iuAvator.jpeg'),
            radius: 100.0,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black38,
            ),
            child: Text(
              '我是IU(李智恩)',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22.0
              )
            ),
          )
        ],
        )
      ),
    );
  }
}