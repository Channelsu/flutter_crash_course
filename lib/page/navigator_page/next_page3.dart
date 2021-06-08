import 'package:flutter/material.dart';

class NextPage3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次ページ3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('次ページ3'),
            TextButton(
              child: Text('戻る'),
              onPressed: () {
                // 前のページに戻る
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}