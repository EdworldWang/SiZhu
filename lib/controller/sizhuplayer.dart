import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:sizhu/model/response/audiourl/AudioUrlResult.dart';
import 'package:sizhu/model/response/detail/SongDetailResult.dart';
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

  String currentSongId;

  getCurrentSongInfo(Function successCallBack, Function errorCallBack){
    getSongInfo(currentSongId, successCallBack, errorCallBack);
  }

  getSongInfo(String currentSongId, Function successCallBack, Function errorCallBack){
    Dio dio = new Dio();
    dio.get<String>(
        "http://111.229.77.179:3000/song/url",
        queryParameters: {"id": [currentSongId]}).then(
            (r) {
          print("audioUrl" + r.data);
          Map userMap = json.decode(r.data.toString());
          var tempResult = new AudioUrlResult.fromJson(userMap);
          if(tempResult.code == 200){
            print("audioUrl success");
            successCallBack(tempResult);
          }else{
            errorCallBack(tempResult);
          }
        });
  }
}