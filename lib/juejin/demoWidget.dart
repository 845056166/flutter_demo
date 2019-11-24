import 'package:flutter/material.dart';
import 'dart:async';
class DemoStateLess extends StatelessWidget {
  final String text;
  
  DemoStateLess(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Text(
        // text为空，就取后边的值
        text ?? '这就是无状态DMEO',
      ),
    );
  }
}

/**
 * 你需要创建管理的是主要是 State ， 
 * 通过 State 的 build 方法去构建控件。
 * 在 State 中，你可以动态改变数据，这类似 MVVM 实现，在 setState 之后，改变的数据会触发 Widget 重新构建刷新。
 * 而下方代码中，是通过延两秒之后，让文本显示为 "这就变了数值"
 * 
 * State 中主要的声明周期有 ：
 * initState ：初始化，理论上只有初始化一次
 * didChangeDependencies：在 initState 之后调用，此时可以获取其他 State 。
 * dispose ：销毁，只会调用一次。
 */ 
class DemoStatefull extends StatefulWidget {
  final String text;

  ///通过构造方法传值
  DemoStatefull(this.text);

  ///主要是负责创建state
  @override
  _DemoStatefullState createState() => _DemoStatefullState();
}

class _DemoStatefullState extends State<DemoStatefull> {
  String text;

  _DemoStatefullState(this.text);

  @override
  void initState() {
    ///初始化，这个函数在生命周期中只调用一次
    super.initState();
    ///定时两秒
    new Future.delayed(Duration(seconds: 1), (){
      setState(() {
        text = '这就变了数值';
      });
    });
  }

  @override
  void dispose() {
    ///销毁
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text ?? '这是有状态的DEMO'
      ),
    );
  }
}