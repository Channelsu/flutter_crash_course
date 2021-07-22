import 'package:flutter/material.dart';

class ColorPickerPage extends StatefulWidget {
  @override
  _ColorPickerPageState createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  Color color = Colors.red;
  
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('カラーピッカー'),
      centerTitle: true,
    ),
    body: Center(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
        width: 120,
        height: 120,
      ),
    ),
  );
}