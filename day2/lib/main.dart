import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // true로 설정시, 우측상단 debug마크 제거
    home: MyHome(), // MyHome내부 클래스를 호출
    // 테마부
    theme: ThemeData(
      primarySwatch: Colors.green, // 상단 타이틀바 색
      accentColor: Colors.white, // 본문 글자 배경색
      // Set background color
    ),
  ));
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        // AppBar Title
        title: Text("Using Theme"),
      ),
      body: Container(
        // Another way to set the background color
        decoration: BoxDecoration(color: Colors.lightBlueAccent), // Body 베경색
        child: Center(
          child: Container(
            // use the theme accent color as background color for this widget
            color: Theme.of(context).accentColor,
            child: Text(
              'Hello World!',
              // Set text style as per theme
              style: Theme.of(context).textTheme.title,
            ),
          ),
        ),
      ),
    );
  }
}