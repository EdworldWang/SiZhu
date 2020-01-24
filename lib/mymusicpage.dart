import 'package:flutter/material.dart';
import 'package:sizhu/page/player_main.dart';

class MyMusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(' 播放 '),
      ),
      body: new RaisedButton(
        child: new Text(' 等你下课 '),
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new SecondScreen()));
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MyApp();
  }
}
