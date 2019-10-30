import 'package:flutter/material.dart';
import './Route.dart';
import './Example.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
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

class TabThree extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
  
    // tabThree Page
    Widget tabThreePage = GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        childAspectRatio: 1,
      ),
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        new Image.asset(
          'images/timg.jpeg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-001.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-002.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-006.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/lee_ji_eun-002.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/timg.jpeg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-001.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-002.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-006.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/lee_ji_eun-002.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/timg.jpeg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-001.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-002.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-006.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/lee_ji_eun-002.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/timg.jpeg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-001.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-002.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/iu-006.jpg',
          fit: BoxFit.cover,
        ),
        new Image.asset(
          'images/lee_ji_eun-002.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(8.0),
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg'),
            ),
            title: Text('IU(李智恩)'),
            subtitle: Text('撒浪嘿'),
            trailing: Text('下午 8:33'),
          ),
          Divider(
            color: Colors.grey[500],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg'),
            ),
            title: Text('IU(李智恩)'),
            subtitle: Text('撒浪嘿'),
          ),
          Divider(
            color: Colors.grey[500],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg'),
            ),
            title: Text('IU(李智恩)'),
            subtitle: Text('撒浪嘿'),
          ),
          Divider(
            color: Colors.grey[500],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg'),
            ),
            title: Text('IU(李智恩)'),
            subtitle: Text('撒浪嘿'),
          ),
          Divider(
            color: Colors.grey[500],
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg'),
            ),
            title: Text('IU(李智恩)'),
            subtitle: Text('撒浪嘿'),
          ),
          Divider(
            color: Colors.grey[500],
          ),
        ],
      )
    );
  }
}
class _MyHomePageState extends State<MyHomePage> {
  int _selectIndex = 0;

  final _widgetOptions = {
    TabThree(),
    FirstScreen(),
    new Example(),
  };
  final TextConfig = [
    Text('消息'),
    Text('联系人'),
    Text('发现'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: TextConfig[_selectIndex],
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera),
          ),
          IconButton(
            icon: Icon(Icons.add),
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('信息')),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), title: Text('联系人')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('发现')),
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




