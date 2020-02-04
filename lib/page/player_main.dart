import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sizhu/anims/needle_anim.dart';
import 'package:sizhu/anims/record_anim.dart';
import 'package:sizhu/page/player_page.dart';

final GlobalKey<PlayerState> musicPlayerKey = new GlobalKey();

const String coverArt =
    'https://p2.music.126.net/8xNVCemkSNQptEyNw1PHKg==/8914840278033758.jpg',
    mp3Url = 'https://sharefs.yun.kugou.com/202001242204/423883d07b17d182df0ff776de1b76df/G148/M09/0C/0D/1A0DAFviWPyAX0NVAELJjAwqF7U759.mp3',
    mp3_anheqiao = 'http://m7.music.126.net/20200204223628/326987500abe801cecd4b745ba06e9d5/ymusic/0709/0f5a/5353/0cee2b495680dd63dbc4d985072a18a5.mp3',
    mp3AssetPah = 'assets/media/sample.mp3';

class MusicPlayerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MusicPlayerExampleState();
  }
}

class _MusicPlayerExampleState extends State<MusicPlayerPage>
    with TickerProviderStateMixin {
  AnimationController controller_record;
  Animation<double> animation_record;
  Animation<double> animation_needle;
  AnimationController controller_needle;
  final _rotateTween = new Tween<double>(begin: -0.15, end: 0.0);
  final _commonTween = new Tween<double>(begin: 0.0, end: 1.0);

  @override
  void initState() {
    super.initState();
    controller_record = new AnimationController(
        duration: const Duration(milliseconds: 15000), vsync: this);
    animation_record =
    new CurvedAnimation(parent: controller_record, curve: Curves.linear);

    controller_needle = new AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    animation_needle =
    new CurvedAnimation(parent: controller_needle, curve: Curves.linear);

    animation_record.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller_record.repeat();
      } else if (status == AnimationStatus.dismissed) {
        controller_record.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new NetworkImage(coverArt),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(
                  Colors.black54,
                  BlendMode.overlay,
                ),
              ),
            ),
          ),
            new Container(
              child: new BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Opacity(
                  opacity: 0.6,
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),
              )),
          new Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              //automaticallyImplyLeading: false,
              leading: new IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed:() {
                  Navigator.of(context).pop();
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: Container(
                child: Text(
                  'Shape of You - Ed Sheeran',
                  style: new TextStyle(fontSize: 13.0),
                ),
              ),
            ),
            body: new Stack(
              alignment: const FractionalOffset(0.5, 0.0),
              children: <Widget>[
                new Stack(
                  alignment: const FractionalOffset(0.7, 0.1),
                  children: <Widget>[
                    new Container(
                      child: RotateRecord(
                          animation: _commonTween.animate(controller_record)),
                      margin: EdgeInsets.only(top: 100.0),
                    ),
                    new Container(
                      child: new PivotTransition(
                        turns: _rotateTween.animate(controller_needle),
                        alignment: FractionalOffset.topLeft,
                        child: new Container(
                          width: 100.0,
                          child: new Image.asset("images/play_needle.png"),
                        ),
                      ),
                    ),
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: new Player(
                    onError: (e) {
                      Scaffold.of(context).showSnackBar(
                        new SnackBar(
                          content: new Text(e),
                        ),
                      );
                    },
                    onPrevious: () {},
                    onNext: () {},
                    onCompleted: () {},
                    onPlaying: (isPlaying) {
                      if (isPlaying) {
                        controller_record.forward();
                        controller_needle.forward();
                      } else {
                        controller_record.stop(canceled: false);
                        controller_needle.reverse();
                      }
                    },
                    key: musicPlayerKey,
                    color: Colors.white,
                    //audioUrl: mp3_anheqiao,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller_record.dispose();
    controller_needle.dispose();
    super.dispose();
  }
}
