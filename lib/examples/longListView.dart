import 'package:flutter/material.dart';

// void main() => runApp(
//   new LongListView(
//     items: new List<String>.generate(100, (i) => 
//       "Item $i"),
//   )
// );

class LongListView extends StatelessWidget {

  final List<String> items;
  LongListView({Key key, @required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final title = '长列表';
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return new ListTile(
              leading:Icon(Icons.phone),
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}