import 'package:flutter/material.dart';



class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController mycontroller = TextEditingController();
    mycontroller.addListener(() {
      print('你输入的内容为：${mycontroller.text}');
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('textField')
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            controller: mycontroller,
            maxLength: 30,
            maxLines: 1,
            autocorrect: true,
            autofocus: true,
            obscureText: false,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.green,
              fontSize: 26.0,
            ),
            onChanged: (text) {
              print('文本内容改变');
            },
            onSubmitted: (text) {
              print('内容提交 $text');
            },
            enabled: true,
            decoration: InputDecoration(
              fillColor: Colors.grey.shade200,
              filled: true,
              helperText: '用户名',
              prefixIcon: Icon(Icons.person),
              suffixText: '用户名',
            ),
          ),
        )
      ),
    );
  }
}