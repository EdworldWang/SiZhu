import 'package:audioplayers/audioplayers.dart';
class SiZhuPlayer {
  //工厂模式 : 单例公开访问点
  factory SiZhuPlayer() =>getInstance();
  static SiZhuPlayer get instance => getInstance();
  static SiZhuPlayer _instance;

  //SiZhuPlayer的成员
  AudioPlayer mAudioPlayer;

  SiZhuPlayer._internal() {
    // 初始化
    mAudioPlayer = new AudioPlayer();
  }

  static SiZhuPlayer getInstance() {
    if (_instance == null) {
      _instance = new SiZhuPlayer._internal();
    }
    return _instance;
  }
}