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
        child: Column(
          children: [
            Text('このデバイスは横$screenWidth 縦$screenHeightです。'),
            SizedBox(height: 20,),
            screenWidth >= 1200 && screenHeight >= 720
              ? Container(height: 100, width: 700, color: Colors.red,)
              : Container(height: 100, width: 100, color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}