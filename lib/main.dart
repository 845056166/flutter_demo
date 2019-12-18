import 'package:flutter/material.dart';
// import './Route.dart';
import './Example.dart';
import './layouts.dart';
import './Layouts/pullDandU.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget{
  MyHomePage({ Key key }): super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;

  final List<Widget> _widgetOptions = [
    Listpull(),
    MyLayout(),
    new Example(),
  ];
  final textConfig = [
    Text('消息'),
    Text('联系人'),
    Text('发现'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: textConfig[_selectIndex],
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                '愿'
              ),
              accountEmail: Text(
                '845056166@qq.com',
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: new NetworkImage('https://q1.qlogo.cn/g?b=qq&s=100&nk=845056166'),
              ),
              onDetailsPressed: () {},
              otherAccountsPictures: <Widget>[
                Container(
                  child: Image.asset('images/iuAvatar.jpg'),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.color_lens),
              ),
              title: Text('个性装扮'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.photo),
              ),
              title: Text('我的相册'),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.wifi),
              ),
              title: Text('免流量特权'),
            ),
          ],
        ),
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('信息')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text('联系人')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('发现')),
          // BottomNavigationBarItem(icon: Icon(Icons.computer), title: Text('Cupertino')),
        ],
        currentIndex: _selectIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTaped,
      ),
    );
  }

  void _onItemTaped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }
}




