import 'package:flutter/material.dart';

class ColorPickerPage extends StatefulWidget {
  @override
  _ColorPickerPageState createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('カラーピッカー'),
      centerTitle: true,
    ),
  );
}