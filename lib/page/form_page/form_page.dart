import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フォーム'),
      ),
      body: ListView(
        children: [
          Checkbox(
            value: value,
            onChanged: (value) => setState(() => this.value = value),
          ),
        ],
      ),
    );
  }
}