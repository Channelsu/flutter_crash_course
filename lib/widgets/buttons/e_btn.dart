import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EBtn extends StatelessWidget {
  final String label;
  final String type;
  final VoidCallback onPressd;
  final DateTime now = DateTime.now();

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
  double decideWidth({String type, BuildContext context}) {  // {}で括ると名前付き引数になる
    switch (type) {
      case 'topMenuBtn':
      case 'fileMenuBtn':
        return MediaQuery.of(context).size.width * 0.9;
      case 'settingMenuBtn':
        return MediaQuery.of(context).size.width * 0.25;
    }
    throw AssertionError('Unexpected type: $this');
  }

  // ボタンの文字の大きさを決めるメソッド
  double decideFontSize({String type}) {  // {}で括ると名前付き引数になる
    switch (type) {
      case 'topMenuBtn':
        return 26;
      case 'fileMenuBtn':
      case 'settingMenuBtn':
        return 20;
    }
    throw AssertionError('Unexpected type: $this');
  }

  // ボタンの文字の太さを決めるメソッド
  FontWeight decideFontWeight({String type}) {  // {}で括ると名前付き引数になる
    switch (type) {
      case 'topMenuBtn':
      case 'fileMenuBtn':
      case 'settingMenuBtn':
        return FontWeight.w600;
    }
    throw AssertionError('Unexpected type: $this');
  }
}
