import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/page/login_page/login_page.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple[900],
        unselectedWidgetColor: Colors.purple[900],
      ),
      // home: RandomWords(),
      home: LoginPage(),
    );
  }
}