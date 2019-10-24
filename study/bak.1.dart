import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // String  src = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555520908879&di=ce0a7c08653f467cefc34fa0f1f0ab6e&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F1d13acd3a62e72ab4667220b0cc680ffff1f2823.png';
        return MaterialApp(
          title: '我和颖，心连心',
          home: Scaffold(
            appBar: new AppBar(title: new Text('ListView widget')),
            body: new ListView(
              children: <Widget>[
                new ListTile(
                  leading: Icon(Icons.add_to_photos),
                  title: Text('add_to_photos'),
                ),
                new ListTile(
                  leading: Icon(Icons.laptop_mac),
                  title: Text('laptop_mac'),
                ),
                new ListTile(
                  leading: Icon(Icons.school),
                  title: Text('school'),
                ),
              ],
            )
      )
    );
  }
}import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    // String  src = 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1555520908879&di=ce0a7c08653f467cefc34fa0f1f0ab6e&imgtype=0&src=http%3A%2F%2Fi0.hdslb.com%2Fbfs%2Farchive%2F1d13acd3a62e72ab4667220b0cc680ffff1f2823.png';
        return MaterialApp(
          title: '我和颖，心连心',
          home: Scaffold(
            appBar: new AppBar(title: new Text('ListView widget')),
            body: Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
              child: Container(
                child: Text('我的第一个flutter应用', style: TextStyle(fontSize: 20.0, color: Colors.deepOrange,decoration: TextDecoration.underline)),
                alignment: Alignment.topCenter,
                width: 500.0,
                height: 400.0,
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                margin: const EdgeInsets.all(10.0),
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //     colors:[Colors.purple,Colors.red,Colors.teal,Colors.yellow],
              //   ),
              //   border: Border.all(width: 5.0, color: Colors.red),
              // ),
            )
            // child: Image.network(src),
      ),
      )
    );
  }
}