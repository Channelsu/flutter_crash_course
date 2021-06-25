import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/page/form_page/checkbox_state.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  bool value = false;
  bool value2 = false;

  final allNotifications = CheckboxState(title: '全てチェック');

  final notifications = [
    CheckboxState(title: '屋根'),
    CheckboxState(title: 'バイク駐車場'),
    CheckboxState(title: '喫煙所'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('フォーム'),
      ),
      body: ListView(
        children: [
          Checkbox(
            activeColor: Theme.of(context).primaryColor,
            value: value,
            onChanged: (value) => setState(() => this.value = value),
          ),
          CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading, // チェックボックスの位置を先頭に
            title: Text('タイトル', style: TextStyle(fontSize: 20),),
            activeColor: Theme.of(context).primaryColor,
            value: value2,
            onChanged: (value) => setState(() => this.value2 = value),
          ),
          SizedBox(height: 50,),
          ...notifications.map(buildSingleCheckbox).toList(),
          SizedBox(height: 50,),
          buildGroupCheckbox(allNotifications),
          Divider(color: Colors.purple,)
        ],
      ),
    );
  }

  Widget buildSingleCheckbox(CheckboxState checkbox) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading, // チェックボックスの位置を先頭に
    title: Text(checkbox.title, style: TextStyle(fontSize: 20),),
    activeColor: Theme.of(context).primaryColor,
    value: checkbox.value,
    onChanged: (value) => setState(() {
      checkbox.value = value;
      allNotifications.value = 
        notifications.every((notification) => notification.value);
    }
    ),
  );

  Widget buildGroupCheckbox(CheckboxState checkbox) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading, // チェックボックスの位置を先頭に
    title: Text(checkbox.title, style: TextStyle(fontSize: 20),),
    activeColor: Theme.of(context).primaryColor,
    value: checkbox.value,
    onChanged: toggleGroupCheckbox,
  );

  void toggleGroupCheckbox(bool value) {
    if(value == null) return null;

    setState(() {
      allNotifications.value = value;
      notifications.forEach((notification) => notification.value = value);
    });
  }
}