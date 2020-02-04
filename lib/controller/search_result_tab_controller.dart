import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizhu/widget/search/search_input_widget.dart';

class SearchResultTabController extends StatelessWidget {
  //选项卡数据
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
    // TODO: implement build
    return new DefaultTabController(
        length: searchResultTabs.length,
        child: Scaffold(
            appBar: AppBar(
              title: SearchInputWidget(),
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
              return Center(child: Text(tab.text));
            }).toList(),
          ),
        ))
    ;
  }

}