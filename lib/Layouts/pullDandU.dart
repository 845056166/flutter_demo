import 'package:flutter/material.dart';


class Listpull extends StatefulWidget {
  @override
  _ListpullState createState() => _ListpullState();
}


class _ListpullState extends State<Listpull> {
  List<dynamic> data = [
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
    {
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩)',
      'msg': '撒浪嘿！！',
      'time': '下午 8:33'
    },
  ];
  ScrollController _scrollController = new ScrollController();
  bool ifRequseting = false;
  fetchData() {
    setState(() {
      data.add({
      'avatorURL': 'https://img.ivsky.com/img/bizhi/pre/201605/24/iu-003.jpg',
      'text': 'IU(李智恩11111)',
      'msg': '撒浪嘿！！',
      'time': _getNow(),
      },
    );
    });
  }
  String _getNow([String str]) {
    DateTime now = new DateTime.now();
    String hour = _fixleng(now.hour.toString());
    String min = _fixleng(now.minute.toString());
    String sec = _fixleng(now.second.toString());
    
    return "$hour:$min:$sec";
  }
  String _fixleng(String str) {
    if (str.length == 1) {
      str = "0$str";
    }
    return str;
  }
  Future<Null> _handleFresh() async {
    print('罢了');
    return fetchData();
  }
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        debugPrint('此时已到达最底部');
        _handleFresh().then((res) {
          debugPrint(res);
        });
      } else if (_scrollController.position.pixels == 0) {
        debugPrint('下拉刷新');
      }
    });
  }
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  _lisiWidget(List data) {
    List<ListTile> list = new List(); 
    data.forEach((item) {
      list.add(new ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(item['avatorURL']),
            foregroundColor: Colors.green,
          ),
          title: Text(item['text']),
          subtitle: Text(item['msg']),
          trailing: Text(item['time']),
        ),
      );
    });
    // for(int i = 0; i < data.length;i++) {
    //   list.add(new ListTile(
    //       leading: CircleAvatar(
    //         backgroundImage: NetworkImage(data[i]['avatorURL']),
    //         foregroundColor: Colors.green,
    //       ),
    //       title: Text(data[i]['text']),
    //       subtitle: Text(data[i]['msg']),
    //       trailing: Text(data[i]['time']),
    //     ),
    //   );
    // }
    return list;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      // child: 
      // RefreshIndicator(  /// 下拉刷新的组件，上拉刷新需要自己实现
        // onRefresh: _handleFresh,
        // child: ListView(
        //   children: _lisiWidget(data),
        //   controller: _scrollController,
        // ),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final item = data[index];
            return new ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(item['avatorURL']),
                foregroundColor: Colors.green,
              ),
              title: Text(item['text']),
              subtitle: Text(item['msg']),
              trailing: Text(item['time']),
            );
          },
          controller: _scrollController,
        ),
      // ),
    );
  }
}