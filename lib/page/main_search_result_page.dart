import 'package:flutter/material.dart';
import 'package:sizhu/controller/search_result_tab_controller.dart';
import 'package:sizhu/widget/search/search_input_widget.dart';

class MainSearchResultPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainSearchResultPageState();
  }
}

class _MainSearchResultPageState extends State<MainSearchResultPage> {
  @override
  Widget build(BuildContext context) {
    bool canCancel = true;
    return new SearchResultTabController();
  }
}
