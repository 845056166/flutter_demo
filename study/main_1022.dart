import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor; 
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    Widget buildButton = new Container(
      padding: const EdgeInsets.all(18.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[500],
                  ),
                )
              ],
            )
          ),
          new Column(
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.red[500],
              )
            ],
          ),
          new Column(
            children: <Widget>[
              new Text(
                '41'
              )
            ],
          )
        ],
      ),
    );
    Column buildButtonColume(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
            padding: EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                color: color,
              )
            ),
          ),
        ],
      );
    };
    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Column(
            children: <Widget>[
              buildButtonColume(Icons.phone, 'CALL'),
            ]
          ),
          new Column(
            children: <Widget>[
              buildButtonColume(Icons.near_me, 'ROUTE'),
            ]
          ),
          new Column(
            children: <Widget>[
              buildButtonColume(Icons.share, 'SHARE'),
            ]
          ),
        ],
      )
    );
    // String  src = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555520908879&di=ce0a7c08653f467cefc34fa0f1f0ab6e&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F1d13acd3a62e72ab4667220b0cc680ffff1f2823.png';
      return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
            title: new Text('demo')
          ),
          body: new ListView(
            children: <Widget>[
              new Image.asset(
                'images/timg.jpeg',
                height: 280.0,
                fit: BoxFit.cover,
              ),
              buildButton,
              buttonSection,
              new Container(
                padding: EdgeInsets.all(32.0),
                child: new Text(
                  'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
                  softWrap: true,
                ),
              )
            ],
          )
        ),
    );
  }
}