import 'package:flutter/material.dart';

class SearchInputWidget extends StatefulWidget {
  final String preInputText;
  final Function(String text) onSubmitted;

  const SearchInputWidget({
    @required this.onSubmitted,
    this.preInputText
  });

  @override
  State<StatefulWidget> createState() {
    return new _SearchInputWidgetState();
  }
}

class _SearchInputWidgetState extends State<SearchInputWidget> {
  final TextEditingController _queryTextController = TextEditingController();

  String get query => _queryTextController.text;

  set query(String value) {
    assert(value != null);
    _queryTextController.text = value;
  }

  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _queryTextController.addListener(_onQueryTextChanged);
    _focusNode.addListener(_onFocusChanged);
    //设置默认的值
    query = (widget.preInputText != null? widget.preInputText: "");
  }

  void _onFocusChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    _queryTextController.removeListener(_onQueryTextChanged);
    _focusNode.removeListener(_onFocusChanged);
  }

  void _onQueryTextChanged() {
    setState(() {
      // rebuild ourselves because query changed.
    });
  }

  @override
  Widget build(BuildContext context) {
    /*print("searchInput build "+ this.inputText);
    TextEditingController inputController = TextEditingController.fromValue(TextEditingValue(
        text: inputText,  //判断keyword是否为空
        // 保持光标在最后
        selection: TextSelection.fromPosition(TextPosition(
            affinity: TextAffinity.downstream,
            offset: '${inputText}'.length)
        )
    ));*/
    return new Container(
      //margin: EdgeInsets.only(left: 40, top: 40),
      //设置 child 居中
      alignment: Alignment(0, 0),
      height: 44,
      width: 300,
      //边框设置
      decoration: new BoxDecoration(
        //背景
        color: Colors.grey.shade200,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        //设置四周边框
        //border: new Border.all(width: 1, color: Colors.red),
      ),
      child: new TextField(
        //maxLines: 1,
        controller: _queryTextController,
        focusNode: _focusNode,
        maxLength: 30,
        cursorColor: Colors.black,
        autocorrect: true,
        style: TextStyle(fontSize: 16, color: Colors.black),
        //内容提交(按回车)的回调
        onSubmitted: (text) {
          print("失去焦点");
          _focusNode.unfocus();
          widget.onSubmitted != null && widget.onSubmitted(text);
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black45,
            size: 24,
          ),
          suffixIcon: new Offstage(
            offstage: query.isEmpty,
            child: new IconButton(
                icon: Icon(
                  Icons.cancel,
                  color: Colors.black45,
                  size: 20,
                ),
                onPressed: _onClickClear),
          ),
          border: InputBorder.none,
          /*  fillColor: Colors.red,
                    filled: true,*/
          counterText: "", //此处控制最大字符是否显示
        ),
      ),
    );
  }

  //点击下方选项进行界面切换
  void _onClickClear() {
    setState(() {
      query = '';
    });
  }
}
