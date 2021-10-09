import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/random_words.dart';
import 'package:fluttercrashcourse/utils.dart';
import 'package:fluttercrashcourse/widgets/buttons/e_btn.dart';
import 'package:fluttercrashcourse/widgets/dialogs/record_dialog.dart';

class OthersPage extends StatefulWidget {

  @override
  _OthersPageState createState() => _OthersPageState();
}

class _OthersPageState extends State<OthersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            EBtn(label: 'カメラ', type: EBtnType.topMenuBtn, onPressd: _testMethod,),
            EBtn(label: 'スキャナー', type: EBtnType.fileMenuBtn, onPressd: _testMethod,),
            EBtn(label: 'ファイル', type: EBtnType.topMenuBtn, onPressd: _testMethod,),
            EBtn(label: '設定', type: EBtnType.topMenuBtn, onPressd: () => showSettings(context),),
            EBtn(label: 'ヘルプ', type: EBtnType.topMenuBtn, onPressd: _testMethod,),
            EBtn(label: '読取音2', type: EBtnType.settingMenuBtn, onPressd: _testMethod,),
            Text(Utils.getNow()),
          ],
        ),
      ),
    );
  }

  void _testMethod() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RandomWords(),
      )
    );
  }

  Future<void> showSettings(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return RecordDialog();
      },
    );
  }
}