/*
* @Description:
* @Author: Edward
* @Date: 2020-02-06  
*/
import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:dio/dio.dart';
import 'package:sizhu/model/response/audiourl/AudioUrlResult.dart';
import 'package:sizhu/model/response/detail/SongDetailResult.dart';
import 'package:sizhu/model/response/research/SearchResult.dart';
class  BussinessProvider{
  //工厂模式 : 单例公开访问点
  factory BussinessProvider() =>getInstance();
  static BussinessProvider get instance => getInstance();
  static BussinessProvider _instance;

  static String SERVER_IP = "http://111.229.77.179";
  static String SERVER_PORT = "3000";


  static String SONG_URL = "/song/url";
  static String SEARCH = "/search";

  static String get SERVER_URL => SERVER_IP + ":" + SERVER_PORT;

  BussinessProvider._internal() {
    // 初始化

  }

  static BussinessProvider getInstance() {
    if (_instance == null) {
      _instance = new BussinessProvider._internal();
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
        SERVER_URL + SONG_URL,
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

  getSearchInfo(String keywords, Function successCallBack, Function errorCallBack){
    Dio dio = new Dio();
    dio.get<String>(
        SERVER_URL + SEARCH,
        queryParameters: {"keywords": keywords}).then((r) {
      print(r.data);
      Map userMap = json.decode(r.data.toString());
      var tempResult = new SearchResult.fromJson(userMap);
      print(tempResult.result.songs[0].duration);
      if(tempResult.code == 200){
        successCallBack(tempResult);
      }else{
        errorCallBack(tempResult);
      }
    });
  }
}