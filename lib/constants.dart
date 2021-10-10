import 'package:flutter/material.dart';

// 映画アプリで使用する定数 ---------------------------------
// アプリ内で使用する色
const kSecondaryColor = Color(0xFFFE6D8E);
const kTextColor = Color(0xFF12153D);
const kTextLightColor = Color(0xFF9A9BB2);
const kFillStarColor = Color(0xFFFCC419);

const kDefaultPadding = 20.0;

const kDefaultShadow = BoxShadow(
  offset: Offset(0, 4),
  blurRadius: 4,
  color: Colors.black26,
);
// 映画アプリで使用する定数 ここまで -------------------------


// その他で使用する定数 ---------------------------------
enum EBtnType {
  topMenuBtn,
  fileMenuBtn,
  settingMenuBtn,
}

enum DialogType {
  detail,
  delete,
}

List<String> warningTexts = ['BTスキャナーが', '接続されて', 'ませんよー'];
// その他で使用する定数 ここまで -------------------------


