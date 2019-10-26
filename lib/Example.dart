import 'package:flutter/material.dart';
import './examples//listView.dart' as commonListView;
import './examples//longListView.dart';
import 'Grid.dart';
import './examples//form.dart';

void main() => runApp(new Example());

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MyExampleList();
    // return new MaterialApp(
    //     home: MyExampleList(),
    //     routes: {
    //       '/list': (BuildContext context) => List.myList(),
    //     }
    // );
  }
}

class MyExampleList extends StatefulWidget {
  @override
  _MyExampleListState createState() => new _MyExampleListState();
}

class _MyExampleListState extends State<MyExampleList> {
  
  // List<Map> newList() {
  //   return new Lis;
  // }
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('列表组件'),
              onPressed: () => {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new commonListView.myList()
                  )
                )
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('长列表'),
              onPressed: () => {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new LongListView(
                      // items: ['1','2','3','4','5','6'],
                      items: new List.generate(100, (i) => 'Items $i'),
                    )
                  )
                )
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('网格布局'),
              onPressed: () => {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new SecondPage()
                      // items: ['1','2','3','4','5','6'],
                  ),
                )
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('表单'),
              onPressed: () => {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new FormPage()
                      // items: ['1','2','3','4','5','6'],
                  ),
                )
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
        ],
    );
  }
}
