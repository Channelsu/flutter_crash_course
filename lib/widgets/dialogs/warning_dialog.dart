import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/utils.dart';
import 'package:fluttercrashcourse/widgets/buttons/t_btn.dart';

class WarningDialog extends StatelessWidget {
  final String title;
  final List<String> texts;

  WarningDialog({this.title, this.texts});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          Icon(Icons.warning_sharp),
          Text(title),
        ]
      ),
      content: Utils.buildTexts(texts),
      actions: [
        TBtn(
          label: 'OK',
          onPressd: () {
            return Utils.goBack(context);
          },
        ),
      ],
    );
  }
}