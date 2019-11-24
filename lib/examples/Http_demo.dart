import 'package:flutter/material.dart';
// import 'package:sky_engine/_http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class HttpDemo extends StatefulWidget {
  @override
  _HttpDemo createState() => new _HttpDemo();
}
class _HttpDemo extends State<HttpDemo> {
   getResult() async {
    var url = 'https://httpbin.org/image';
      var httpClient = new HttpClient();
      String result;
      try {
        var request = await httpClient.getUrl(Uri.parse(url));
        var response = await request.close();
        if (response.statusCode == 200) {
          var json = await response.transform(utf8.decoder).join();
          var data = jsonDecode(json);
          result = data['origin'];
        } else {
          result =
          'Error getting IP address:\nHttp status ${response.statusCode}';
        }
      } catch (exception) {
        result = '${exception} Failed getting IP address';
      }
      print('result: $result');
      return result;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('http demo'),
      ),
      body: GestureDetector(
        child: ButtonBar(
          alignment: MainAxisAlignment.end,
          children: <Widget>[
            Text('点我'),
          ],
        ),
        onTap: () {
          print('onTap');
          getResult();
          // String result = getResult();
          // print('result: $result');
        },
      ),
    );
  }
}