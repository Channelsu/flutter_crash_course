import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/page/navigator_page/next_page1.dart';
import 'package:fluttercrashcourse/page/navigator_page/next_page2.dart';
import 'package:fluttercrashcourse/page/navigator_page/next_page3.dart';

class NavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ページ遷移'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('画面遷移１'),
              onPressed: () {
                // 一番シンプルな画面遷移
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage1()),
                );
              },
            ),
            ElevatedButton(
              child: Text('画面遷移２'),
              onPressed: () {
                // 値を渡す方法
                Navigator.push(
                  context,
                  // 引数を渡し、次ページでフィールドとコンストラクタを定義する
                  MaterialPageRoute(builder: (context) => NextPage2('渡したい値')),
                );
              },
            ),
            ElevatedButton(
              child: Text('画面遷移３'),
              onPressed: () {
                // 下から次のページが出てくる
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => NextPage3(),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('画面遷移４'),
              onPressed: () {
                
              },
            ),
            ElevatedButton(
              child: Text('画面遷移５'),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}