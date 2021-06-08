import 'package:flutter/material.dart';

class NextPage2 extends StatelessWidget {

  final String val;

  NextPage2(this.val);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('次ページ2'),
      ),
      body: Center(
        child: Text(val),
      ),
    );
  }
}