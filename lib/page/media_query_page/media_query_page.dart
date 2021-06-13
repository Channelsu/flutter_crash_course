import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('メディアクエリ'),
      ),
      body: Center(
        child: Text('このデバイスは横$screenWidth 縦$screenHeightです。'),
      ),
    );
  }
}