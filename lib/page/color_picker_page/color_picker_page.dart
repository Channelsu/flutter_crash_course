import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

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

  // Widget buildColorPicker() => ColorPicker(
  //   pickerColor: color,
  //   enableAlpha: false,
  //   showLabel: false,
  //   onColorChanged: (color) => setState(() => this.color = color),
  // );
  // Widget buildColorPicker() => BlockPicker(
  //   pickerColor: color,
  //   availableColors: [
  //     Colors.green,
  //     Colors.orange,
  //     Colors.blue,
  //     Colors.pink,
  //   ],
  //   onColorChanged: (color) => setState(() => this.color = color),
  // );
  Widget buildColorPicker() => SlidePicker(
    pickerColor: color,
    onColorChanged: (color) => setState(() => this.color = color),
  );
    
  

  void pickColor(BuildContext context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('色を選択して下さい'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildColorPicker(),
          TextButton(
            child: Text('決定', style: TextStyle(fontSize: 20),),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    ),
  );
}