import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sizhu/controller/search_result_tab_controller.dart';
import 'package:sizhu/model/response/research/SearchResult.dart';
import 'package:sizhu/model/response/research/Song.dart';
import 'package:sizhu/widget/search/search_input_widget.dart';

class MainSearchResultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainSearchResultPageState();
  }
}

class _MainSearchResultPageState extends State<MainSearchResultPage> {
  String searchWord;  //搜索关键词
  SearchResult allSearchResult;

  final List<Tab> searchResultTabs = <Tab>[
    Tab(text: '综合'),
    Tab(text: '单曲'),
    Tab(text: '云村'),
    Tab(text: '歌单'),
    Tab(text: '歌手'),
    Tab(text: '专辑'),
    Tab(text: '歌词'),
    Tab(text: '用户'),
  ];
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: searchResultTabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: SearchInputWidget(onSubmitted: _onSumittedSearchWord),
            backgroundColor: Colors.white,
            bottom:TabBar(
                labelColor: Colors.red,
                unselectedLabelColor: Colors.black,
                isScrollable: true,
                tabs: searchResultTabs
            ),
          ),
          body:  TabBarView(
            children: searchResultTabs.map((Tab tab){
              if(tab.text == "单曲" && allSearchResult != null){
                return new Center(
                  child: new ListView(
                    children: allSearchResult.result.songs.map((Song song){
                      return new ListTile(
                        title: new Text(song.name),
                      );
                    }).toList(),
                  ),
                );
              }else{
                return Center(child: Text(tab.text));
              }

            }).toList(),
          ),
        ))
    ;
  }

  _onSumittedSearchWord(text){
    Dio dio = new Dio();
    dio.get<String>(
        "http://111.229.77.179:3000/search",
        queryParameters: {"keywords": text}).then(
            (r) {
          print(r.data);
          Map userMap = json.decode(r.data.toString());
          var tempResult = new SearchResult.fromJson(userMap);
          print(tempResult.result.songs[0].duration);
          setState(() {
            this.allSearchResult = tempResult;
          });
    });
  }
}
