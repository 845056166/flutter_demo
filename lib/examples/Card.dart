import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('卡片布局'),
      ),
      body: Center(
        child: new SizedBox(
          height: 200.0,
          child:  Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    '深圳市深南大道35号',
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  subtitle: Text(
                    '联创科技有限公司',
                  ),
                  leading: Icon(
                    Icons.home,
                    color: Colors.lightBlue,
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    '深圳市罗湖区沿海大道32号',
                    style: TextStyle(
                      fontWeight: FontWeight.w300
                    ),
                  ),
                  subtitle: Text(
                    '一本培训机构',
                  ),
                  leading: Icon(
                    Icons.school,
                    color: Colors.lightBlue,
                  ),
                ),
                Divider(),
              ],
            ),
          )
        ),
      ),
    );
  }
}