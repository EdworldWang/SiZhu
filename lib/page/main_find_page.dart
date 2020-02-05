import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sizhu/page/main_search_result_page.dart';
import 'package:sizhu/widget/search/search_input_widget.dart';

class MainFindPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainFindPageState();
  }
}

class _MainFindPageState extends State<MainFindPage> {
  @override
  Widget build(BuildContext context) {
    bool canCancel = true;
    return new Scaffold(
        body: new Column(
            children: <Widget>[
              new Container(
                child: new SearchInputWidget(
                  onSubmitted: (text){
                    //print('submit $text');

                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new MainSearchResultPage(preSearchInputText: text)));
                  },
                ),
                padding: EdgeInsets.all(40),
              )

          ],
    ));
  }
}
