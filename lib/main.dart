import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizhu/provider/player_provider.dart';
import 'page/mymusicpage.dart';

void main() => runApp(SiZhuApp());

class SiZhuApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PlayerProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          platform: TargetPlatform.iOS,
        ),
        home: new SiZhuHomePage(),
      ),
    );
  }
}

class SiZhuHomePage extends StatefulWidget {
  @override
  createState() => _SiZhuHomePageState();
}

class _SiZhuHomePageState extends State<SiZhuHomePage> {
  int _selectedIndex = 1; //当前选项的索引
  final _widgetOptions = [
    Text('Index 0: 信息'),
    MyMusicPage(),
    Text('Index 2: 发现'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Consumer(builder: (BuildContext context,
              PlayerProvider playerProvider, Widget child) {
            if(playerProvider != null && playerProvider.musicPlayModel != null){
              return Text(
                //获取数据
                'value: ${playerProvider.musicPlayModel.musicName}',
                style: TextStyle(fontSize: 20),
              );
            }else{
              return Container();
            }
          }),
          BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.search), title: Text(' 发现 ')),
              BottomNavigationBarItem(icon: Icon(Icons.music_note), title: Text(' 音乐 ')),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text(' 账号'))
            ],
            currentIndex: _selectedIndex,
            fixedColor: Colors.deepPurple,
            onTap: _onItemTapped,
          ),
        ]
      )
    );
  }

  //点击下方选项进行界面切换
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
