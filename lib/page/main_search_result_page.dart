import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sizhu/controller/search_result_tab_controller.dart';
import 'package:sizhu/controller/sizhuplayer.dart';
import 'package:sizhu/model/response/research/SearchResult.dart';
import 'package:sizhu/model/response/research/Song.dart';
import 'package:sizhu/net/model/model_search_info.dart';
import 'package:sizhu/net/music/bussiness_music_api.dart';
import 'package:sizhu/page/player_main.dart';
import 'package:sizhu/widget/search/search_input_widget.dart';

class MainSearchResultPage extends StatefulWidget {
  String preSearchInputText;

  MainSearchResultPage({this.preSearchInputText});

  @override
  State<StatefulWidget> createState() {
    return new _MainSearchResultPageState();
  }
}

class _MainSearchResultPageState extends State<MainSearchResultPage> with SingleTickerProviderStateMixin{
  String searchWord; //搜索关键词
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

  final List<int> searchType = [
    SearchModel.SEARCH_ALL,
    SearchModel.SEARCH_SONG,
    SearchModel.SEARCH_MV,
    SearchModel.SEARCH_SONG_LIST,
    SearchModel.SEARCH_ARTIST,
    SearchModel.SEARCH_ALBUM,
    SearchModel.SEARCH_LYRIC,
    SearchModel.SEARCH_USER,
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: searchResultTabs.length);
    if (widget.preSearchInputText != null &&
        widget.preSearchInputText.isNotEmpty) {
      _onSumittedSearchWord(widget.preSearchInputText);
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          resizeToAvoidBottomPadding: false, //输入框抵住键盘 内容不随键盘滚动
          appBar: AppBar(
            title: SearchInputWidget(
              onSubmitted: _onSumittedSearchWord,
              preInputText: widget.preSearchInputText,
            ),
            backgroundColor: Colors.white,
            bottom: TabBar(
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              isScrollable: true,
              tabs: searchResultTabs,
              onTap: (int) {
                //失去焦点
                FocusScope.of(context).requestFocus(FocusNode());
              },
            ),
          ),
          body: GestureDetector(
            onTap: () {
              // 点击空白页面关闭键盘
              print("点击空白处");
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: TabBarView(
              controller: _tabController,
              children: searchResultTabs.map((Tab tab) {
                if (tab.text == "综合" && allSearchResult != null) {
                  return new Center(
                      child: new NotificationListener(
                    onNotification: (ScrollNotification note) {
                      //print(note.metrics.pixels.toInt());  // 滚动位置。
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    child: new ListView(
                      children: allSearchResult.result.songs.map((Song song) {
                        return new ListTile(
                          title: new Text(song.name),
                          onTap: () {
                            //设置当前歌曲
                            SiZhuPlayer.getInstance().currentSongId =
                                song.id.toString();
                            print("点击了" + song.id.toString());
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) =>
                                        new MusicPlayerPage()));
                          },
                        );
                      }).toList(),
                    ),
                  ));
                } else {
                  return Center(child: Text(tab.text));
                }
              }).toList(),
            ),
        ));
  }

  _onSumittedSearchWord(keywords) {
    SearchModel searchModel = new SearchModel(keywords: keywords,type: searchType[_tabController.index].toString());
    BussinessProvider.getInstance().getSearchInfo(
        searchModel, (SearchResult searchResult) {
      setState(() {
        this.allSearchResult = searchResult;
      });
    }, () {});
  }
}
