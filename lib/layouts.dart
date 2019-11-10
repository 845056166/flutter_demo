import 'package:flutter/Material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/widgets.dart';
import './Layouts/Container.dart';
import './Layouts/MyPadding.dart';
import './Layouts/MyAligin.dart';
import './Layouts//MyFittedBox.dart';
import './Layouts//MyStackAli.dart';
import './Layouts/MyOverflowBox.dart';
import './Layouts/MyConstrainedBox.dart';
import './examples/Http_demo.dart';

class MyLayout extends StatefulWidget {

  MyLayout({ Key key}): super(key: key);

  @override
  _MyLayoutState createState() => new _MyLayoutState();
  

}
class _MyLayoutState extends State<MyLayout>{

  bool offstage = false;
  _launchURL() async {
  const url = 'https://www.baidu.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('布局')
      // ),
      body: ListView(
        children: <Widget>[
          Container(
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
                FlatButton(
                  child: Text('ConstrainedBox'),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      new MaterialPageRoute(
                        builder: (context) => new MyConstrainedBox(),
                          // items: ['1','2','3','4','5','6'],
                      ),
                    );
                  },
                ),
                FlatButton(
                  child: Text('limitedBox'),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      new MaterialPageRoute(
                        builder: (context) => new MylimitedBox(),
                          // items: ['1','2','3','4','5','6'],
                      ),
                    );
                  },
                ),
                Offstage(
                  offstage: offstage,
                  child: FlatButton(
                    child: Text('FractionalSizeBox'),
                    onPressed: () {
                      Navigator.push(
                        context, 
                        new MaterialPageRoute(
                          builder: (context) => new MyFractionalSizeBox(),
                            // items: ['1','2','3','4','5','6'],
                        ),
                      );
                    },
                  ),
                ),
                FlatButton(
                  child: Text('AspectRadio'),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      new MaterialPageRoute(
                        builder: (context) => new MyAspectRadio(),
                          // items: ['1','2','3','4','5','6'],
                      ),
                    );
                  },
                ),
                FlatButton(
                  child: Text('HTTP request'),
                  onPressed: () {
                    Navigator.push(
                      context, 
                      new MaterialPageRoute(
                        builder: (context) => new HttpDemo(),
                          // items: ['1','2','3','4','5','6'],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            offstage = !offstage;
          });
          _launchURL();
        },
        tooltip: '显示隐藏',
        child: Icon(Icons.flight),
      ),
    );
  }
}