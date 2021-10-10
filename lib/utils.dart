import 'package:flutter/material.dart';

class Utils {
  
  // 前のページに戻るメソッド
  static void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  static Widget buildTexts(List<String> texts) {
    List<Widget> textWidgetList = [];

    for(var i = 0; i < texts.length; i++) {
      textWidgetList.add(Text(texts[i]));
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: textWidgetList
    );
  }

  // Widget _buildSpotName() {
  //   return TextFormField(
  //     decoration: InputDecoration(labelText: '駐輪所名',),
  //     maxLength: 20,
  //     validator: (String value) {
  //       if(value.isEmpty) {
  //         return '必須入力です';
  //       }
  //       return null;
  //     },
  //     onSaved: (String value) {
  //       _spotName = value;
  //     },
  //   );
  // }

  // 現在日時を取得し、文字列にして返すメソッド
  static String getNow() {
    // 2021-10-09 08:47:40.397734
    DateTime now = DateTime.now();
    int month = now.month;
    int day = now.day;
    int hour = now.hour;
    int minute = now.minute;

    String dateTime = '$month月$day日($hour時$minute分)';
    return dateTime;
  }

}