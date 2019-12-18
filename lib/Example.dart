import 'package:flutter/material.dart';
import 'package:hello_flutter/examples/textField.dart' as prefix0;
import './examples//listView.dart' as commonListView;
import './examples//longListView.dart';
import 'Grid.dart';
import './examples//form.dart';
import './examples/tabBar.dart';
import './examples/TabBarHard.dart';
import './examples/popMenu.dart';
import './examples/simpleDialog.dart';
import './examples/alertDialog.dart';
// import './examples//textField.dart';
import './examples/Card.dart';
import './examples//Cupertino.dart';
import './examples//cupertinoDialog.dart';

void main() => runApp(new Example());


class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new commonListView.Mylist()
                  )
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('长列表'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new LongListView(
                      // items: ['1','2','3','4','5','6'],
                      items: new List.generate(100, (i) => 'Items $i'),
                    )
                  )
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('网格布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new SecondPage()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('表单'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new FormPage()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('选项卡(simple)'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new Tabbar()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('选项卡(hard)'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new TabBarHard()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('pop弹出菜单'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new PopMenu()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('简单的对话框'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new SimpledialogDemo()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('提示对话框'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyAlertDialog()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('文本框'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new prefix0.TextFieldDemo()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('卡片'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyCard()
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('CupertinoActivityIndicator'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new CupertinoComponents(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('CupertinoDialog'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyCupertinoDialog(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
                // Navigator.pushNamed(context, '/list')
              },
            ),
          ),
        ],
    );
  }
}
