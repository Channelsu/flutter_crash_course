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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            width: 120,
            height: 120,
          ),
          SizedBox(height: 32,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 24,)
            ),
            child: Text('色選択', style: TextStyle(fontSize: 24),),
            onPressed: () => pickColor(context),
          )
        ],
      ),
    ),
  );

  void pickColor(BuildContext context) {

  }
}