import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/random_words.dart';
import 'package:fluttercrashcourse/utils.dart';
import 'package:fluttercrashcourse/widgets/buttons/e_btn.dart';
import 'package:fluttercrashcourse/widgets/dialogs/record_dialog.dart';
import 'package:fluttercrashcourse/widgets/dialogs/warning_dialog.dart';

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
            EBtn(label: 'スキャナー', type: EBtnType.fileMenuBtn, onPressd: () => showWarningDialog(context),),
            EBtn(label: 'ファイル', type: EBtnType.topMenuBtn, onPressd: _testMethod,),
            EBtn(label: '設定', type: EBtnType.topMenuBtn, onPressd: () => showRecordDialog(context),),
            EBtn(label: 'ヘルプ', type: EBtnType.topMenuBtn, onPressd: _testMethod,),
            EBtn(label: '前のページに戻る', type: EBtnType.settingMenuBtn, onPressd: () => Utils.goBack(context),),
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

  Future<void> showRecordDialog(BuildContext context) {
    return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (_) {
        return RecordDialog(type: DialogType.detail,);
      },
    );
  }

  Future<void> showWarningDialog(BuildContext context) {
    return showDialog(
      context: context,
      // barrierDismissible: false,
      builder: (_) {
        return WarningDialog(title: 'ご注意！！', texts: warningTexts);
      },
    );
  }
}