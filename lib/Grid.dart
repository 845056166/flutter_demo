import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('相册'),
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 1,
          ),
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            new Image.asset(
              'images/timg.jpeg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-001.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-002.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-006.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/lee_ji_eun-002.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/timg.jpeg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-001.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-002.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-006.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/lee_ji_eun-002.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/timg.jpeg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-001.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-002.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-006.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/lee_ji_eun-002.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/timg.jpeg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-001.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-002.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/iu-006.jpg',
              fit: BoxFit.cover,
            ),
            new Image.asset(
              'images/lee_ji_eun-002.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
    );
  }
}