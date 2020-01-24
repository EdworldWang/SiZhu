import 'package:flutter/material.dart';

void main() => runApp(SiZhuApp());

class SiZhuApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ),
      home: new SiZhuHomePage(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(' 丝竹页面 '),
      ),
      body: new RaisedButton(
        child: new Text(' hhhh'),
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new SecondScreen()));
        },
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(' 来吧老弟 '),
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
    Text('Index 1: 通讯录'),
    Text('Index 2: 发现'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text(' 发现 ')),
          BottomNavigationBarItem(icon: Icon(Icons.music_note), title: Text(' 音乐 ')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text(' 账号'))
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  //点击下方选项进行界面切换
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
