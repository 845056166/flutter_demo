import 'package:flutter/Material.dart';
import 'package:flutter/widgets.dart';
import './Layouts/Container.dart';
import './Layouts/MyPadding.dart';
import './Layouts/MyAligin.dart';
import './Layouts//MyFittedBox.dart';
import './Layouts//MyStackAli.dart';
import './Layouts/MyOverflowBox.dart';
class Layouts extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('布局')
      // ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FlatButton(
              child: Text('Container布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyContainer(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('Center布局'),
              onPressed: () {
                // Navigator.push(
                //   context, 
                //   new MaterialPageRoute(
                //     builder: (context) => new MyContainer(),
                //       // items: ['1','2','3','4','5','6'],
                //   ),
                // );
              },
            ),
            FlatButton(
              child: Text('padding布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyPadding(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('align布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyAlign(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('Row水平布局'),
              onPressed: () {
                // Navigator.push(
                //   context, 
                //   new MaterialPageRoute(
                //     builder: (context) => new MyAlign(),
                //       // items: ['1','2','3','4','5','6'],
                //   ),
                // );
              },
            ),
            FlatButton(
              child: Text('Column垂直布局'),
              onPressed: () {
                // Navigator.push(
                //   context, 
                //   new MaterialPageRoute(
                //     builder: (context) => new MyAlign(),
                //       // items: ['1','2','3','4','5','6'],
                //   ),
                // );
              },
            ),
            FlatButton(
              child: Text('BoxFit垂直布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyFittedBox(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('Stack/alignment布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyStackAlign(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('Stack/Position布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyStackPosition(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('indexedStack布局'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new IndexStack(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('overflowBox'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MyOverflowBox(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
            FlatButton(
              child: Text('sizedBox'),
              onPressed: () {
                Navigator.push(
                  context, 
                  new MaterialPageRoute(
                    builder: (context) => new MySizedBox(),
                      // items: ['1','2','3','4','5','6'],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}