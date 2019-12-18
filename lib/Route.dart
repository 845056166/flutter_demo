import 'package:flutter/material.dart';
import './Grid.dart';
// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Navigation',
//       home: new FirstScreen(),
//     );
//   }
// }

// // demo1_navigation.dart
// class FirstScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('First Screen'),
//       ),
//       body: new Center(
//         child: new RaisedButton(
//           child: new Text('Launch second screen'),
//           onPressed: () => {
//             Navigator.push(
//               context, 
//               new MaterialPageRoute(
//                 builder: (context) => new SecondScreen()
//               )
//             )
//           },
//         ),
//       ),
//     );
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Second Screen'),
//       ),
//       body: new Center(
//         child: new RaisedButton(
//           child: new Text('Go back!'),
//           onPressed: null,
//         ),
//       ),
//     );
//   }
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: new FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Color color = Theme.of(context).primaryColor; 
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
    }
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
    return Scaffold(
          // appBar: AppBar(
          //   title: new Text('主页')
          // ),
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
              ),
              FlatButton(
                onPressed: () {
                  print('你点击了扁平按钮');
                },
                child: Text('扁平按钮'),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
              child: Text('跳转'),
              tooltip: "请点击FloattingActionButton",
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              elevation: 7.0,
              highlightElevation: 14.0,
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  new SnackBar(
                    content: Text('你点击了FloatActionButton'),
                  ),
                );
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new SecondPage()
                  )
                );
              },
              mini: false,
              shape: new CircleBorder(),
              isExtended: false,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          // <Widget>[
          //   SizedBox(
          //     child: 
          //       RaisedButton(
          //         child: Text(
          //           'Click Button',
          //           style: TextStyle(
          //             color: Colors.white,
          //           ),
          //         ),
          //         onPressed: () => {
          //           Navigator.push(
          //             context, 
          //             new MaterialPageRoute(
          //               builder: (context) => new SecondPage()
          //             )
          //           )
          //         }
          //     ),
          //   )
          // ],
    );
  }
}


