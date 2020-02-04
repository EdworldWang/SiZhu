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
  bool showCancel = false;
  String inputText = "";

  @override
  void initState() {
    super.initState();
    this.inputText = (widget.preInputText != null ? widget.preInputText : "");
    final TextEditingController inputController = TextEditingController.fromValue(TextEditingValue(
        text: this.inputText,  //判断keyword是否为空
        // 保持光标在最后
        selection: TextSelection.fromPosition(TextPosition(
            affinity: TextAffinity.downstream,
            offset: '${this.inputText}'.length)
        )
    ));
  }

  @override
  Widget build(BuildContext context) {

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
      child: TextField(
        //maxLines: 1,
        //controller: inputController,
        maxLength: 30,
        cursorColor: Colors.black,
        style: TextStyle(fontSize: 16, color: Colors.black),
        onChanged: (text){
          setState(() {
            //inputText = text;
            showCancel = (text.length > 0);
          });
        },
        //内容提交(按回车)的回调
        onSubmitted: (text) {
          widget.onSubmitted != null && widget.onSubmitted(text);
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black45,
            size: 24,
          ),
          suffixIcon: new Offstage(
            offstage: !showCancel,
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
      inputText = "";
      showCancel = false;
    });
  }
}
