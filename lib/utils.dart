import 'package:flutter/material.dart';

class Utils {
  
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