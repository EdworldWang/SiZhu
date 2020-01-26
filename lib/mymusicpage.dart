import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizhu/model/music_play_model.dart';
import 'package:sizhu/page/player_main.dart';
import 'package:sizhu/provider/player_provider.dart';

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
          Provider.of<PlayerProvider>(context, listen: false).setProviderModel(new MusicPlayModel(0, 0, "等你下课", ""));
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
