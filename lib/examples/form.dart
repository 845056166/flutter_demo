import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  String userName, passWord;
  void login() {
    print('login');
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar( title: Text('form 表单')),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: '请输入用户名',
                    ),
                    onSaved: (value) => {
                      userName = value
                    },
                    onFieldSubmitted: (value){
                      print(value);
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: '请输入密码'
                    ),
                    obscureText: true,
                    validator: (value) {
                      return value.length < 6 ? '密码长度不够6位' : null;
                    },
                    onSaved: (value) {
                      passWord = value;
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 360.0,
            height: 42.0,
            child: RaisedButton(
              onPressed: login,
              child: Text(
                '登陆',style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}