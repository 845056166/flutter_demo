import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {

  final List<Tab> myTabs = <Tab>[
    Tab(text: '选项卡一'),
    Tab(text: '选项卡二'),
  ];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: myTabs,
            ),
            title: Text('选项卡示例'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: TabBarView(
            children: myTabs.map((Tab tab) {
              return Center(
                child: Text(tab.text),
              );
            }).toList(),
          )
        ),
      ),
      
    );
  }
}