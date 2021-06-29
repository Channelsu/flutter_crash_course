import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  String smiley = '🥵';
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: backgroundColor,
    appBar: AppBar(
      // title: Text(MyApp.title),
      title: Text('お天気'),
      centerTitle: true,
    ),
    body: Column(
      children: [
        Text(smiley, style: TextStyle(fontSize: 100),)
      ],
    ),
  );
}