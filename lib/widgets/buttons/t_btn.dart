import 'package:flutter/material.dart';

class TBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressd;

  TBtn({@required this.label, @required this.onPressd});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(label),
      onPressed: onPressd,
    );
  }
}