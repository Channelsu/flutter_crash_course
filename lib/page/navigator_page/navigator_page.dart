import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/page/navigator_page/next_page1.dart';

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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextPage1()),
                );
              },
            ),
            ElevatedButton(
              child: Text('画面遷移２'),
              onPressed: () {
                
              },
            ),
            ElevatedButton(
              child: Text('画面遷移３'),
              onPressed: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}