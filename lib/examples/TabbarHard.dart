import 'package:flutter/material.dart';

class ItemView {
  final String title;
  final IconData icon;
  const ItemView({ this.title, this.icon });
}

class SelectView extends StatelessWidget {
  final ItemView itemView;
  const SelectView({Key key, this.itemView}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(itemView.title),
          Icon(itemView.icon, size: 128, color: Colors.green,)
        ],
      ),);
  }
}
const List<ItemView> items = const <ItemView>[
  ItemView(title: "自驾", icon: Icons.directions_car),
  ItemView(title: "自行车", icon: Icons.directions_bike),
  ItemView(title: "自驾3", icon: Icons.directions_car),
  ItemView(title: "自驾4", icon: Icons.directions_car),
  ItemView(title: "自驾5", icon: Icons.directions_car),
  ItemView(title: "自驾6", icon: Icons.directions_car),
];

class TabBarHard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: items.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text('复杂选项卡'),
            bottom: TabBar(
              tabs: 
                items.map((ItemView item) {
                  return Tab(
                    text: item.title,
                    icon: Icon(item.icon),
                  );
                }).toList(),
              isScrollable: true,
            ),
          ),
          body: TabBarView(
            children: items.map((ItemView item){
              return Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: SelectView(itemView: item)),
              );
            }).toList(),
          ),
        ),
    );
  }
}