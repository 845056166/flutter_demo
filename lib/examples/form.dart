import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => new _FormPageState();
}

class _FormPageState extends State<FormPage> {
  GlobalKey<FormState> loginkey = new GlobalKey<FormState>();
  String userName, passWord;
  void login() {
    print('点了提交按钮');
    var loginForm = loginkey.currentState;
    print(loginForm);
    if (loginForm.validate()) {
      loginForm.save();
      print('userName:'+ userName + ' password:'+ passWord);
    }
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
              key: loginkey,
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
              child: Text(
                '登陆',style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              onPressed: login,
            ),
          )
        ],
      )
    );

    // return new MaterialApp(
    //   title: 'Flutter data',
    //   home: new Scaffold(
    //     appBar: new AppBar(
    //       title: new Text('Flutter Form'),
    //       leading: IconButton(
    //         icon: Icon(Icons.arrow_back),
    //         onPressed: () {
    //           Navigator.pop(context);
    //         },
    //       ),
    //     ),
    //     floatingActionButton: new FloatingActionButton(
    //       onPressed: login,
    //       child: new Text('提交'),
    //     ),
    //     body: new Container(
    //       padding: const EdgeInsets.all(16.0),
    //       child: new Form(
    //         key: loginkey,
    //         child: new Column(
    //           children: <Widget>[
    //             new TextFormField(
    //               decoration: new InputDecoration(
    //                 labelText: 'Your Name',
    //               ),
    //               onSaved: (val) {
    //                 userName = val;
    //               },
    //             ),
    //             new TextFormField(
    //               decoration: new InputDecoration(
    //                 labelText: 'Password',
    //               ),
    //               obscureText: true,
    //               validator: (val) {
    //                 return val.length < 4 ? "密码长度错误" : null;
    //               },
    //               onSaved: (val) {
    //                 passWord = val;
    //               },
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}