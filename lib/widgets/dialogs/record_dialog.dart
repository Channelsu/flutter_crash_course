import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/utils.dart';
import 'package:fluttercrashcourse/widgets/buttons/t_btn.dart';

class RecordDialog extends StatelessWidget {
  final DialogType type;

  RecordDialog({this.type});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          (type == DialogType.detail) ? Icon(Icons.info_outline) : Icon(Icons.warning),
          (type == DialogType.detail) ? Text('詳細情報') : Text('削除'),
        ]
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('通番:2'),
          Text('読取日時:09:53:05'),
          Text(
            'QRコード:aaaaaaaaaaaaaaaaaaaaaaaaassssssssssssssssssssssdddddd',
          ),
          if (type == DialogType.delete) Text('を削除しますか？'),
        ],
      ),
      actions: [
        if (type == DialogType.delete) TBtn(label: 'キャンセル', onPressd: () => Navigator.pop(context)),
        TBtn(
          label: 'OK',
          onPressd: () {
            return
              (type == DialogType.detail)
              ? Utils.goBack(context)
              : print('削除しました');
          },
        ),
      ],
    );
  }
}
