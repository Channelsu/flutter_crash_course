import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttercrashcourse/constants.dart';

class EBtn extends StatelessWidget {
  final String label;
  // final String type;
  final EBtnType type;
  final VoidCallback onPressd;

  EBtn({@required this.label, @required this.type, @required this.onPressd});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      child: SizedBox(
        width: decideWidth(type: type, context: context),
        child: ElevatedButton(
          child: Text(  // ラベル部分
            label,
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            onPrimary: Colors.black,
            textStyle: TextStyle(
              fontSize: decideFontSize(type: type),
              fontWeight: decideFontWeight(type: type),
            ),
            padding: EdgeInsets.all(4)
          ),
          onPressed: onPressd,
        ),
      ),
    );
  }

  // ボタンの横幅を決めるメソッド
  double decideWidth({EBtnType type, BuildContext context}) {  // {}で括ると名前付き引数になる
    switch (type) {
      case EBtnType.topMenuBtn:
      case EBtnType.fileMenuBtn:
        return MediaQuery.of(context).size.width * 0.9;
      case EBtnType.settingMenuBtn:
        return MediaQuery.of(context).size.width * 0.25;
    }
    throw AssertionError('Unexpected type: $this');
  }

  // ボタンの文字の大きさを決めるメソッド
  double decideFontSize({EBtnType type}) {  // {}で括ると名前付き引数になる
    switch (type) {
      case EBtnType.topMenuBtn:
        return 26;
      case EBtnType.fileMenuBtn:
      case EBtnType.settingMenuBtn:
        return 20;
    }
    throw AssertionError('Unexpected type: $this');
  }

  // ボタンの文字の太さを決めるメソッド
  FontWeight decideFontWeight({EBtnType type}) {  // {}で括ると名前付き引数になる
    switch (type) {
      case EBtnType.topMenuBtn:
      case EBtnType.fileMenuBtn:
      case EBtnType.settingMenuBtn:
        return FontWeight.w600;
    }
    throw AssertionError('Unexpected type: $this');
  }
}
