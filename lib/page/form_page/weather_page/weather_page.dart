import 'dart:math';

import 'package:flutter/material.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  String smiley = '🥵';
  int degrees = 38;
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: backgroundColor,
    appBar: AppBar(
      // title: Text(MyApp.title),
      title: Text('お天気'),
      centerTitle: true,
    ),
    body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(smiley, style: TextStyle(fontSize: 100),),
          SizedBox(height: 24,),
          Text('$degrees°C', style: TextStyle(fontSize: 80),),
          TextButton(
            child: Text('チェンジ！！', style: TextStyle(fontSize: 24, color: Colors.white),),
            onPressed: changeWeather,
          ),
        ],
      ),
    ),
  );

  void changeWeather(){
    setState(() {
      smiley = '🥶';
      degrees = nextNumber(min: -20, max: 0);
      backgroundColor = Colors.blueAccent.shade700;
    });
  }

  int nextNumber({int min, int max}) => 
    min + Random().nextInt(max - min + 1);
}