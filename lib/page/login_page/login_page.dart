import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercrashcourse/page/login_page/registration_page.dart';
import 'package:fluttercrashcourse/random_words.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Firebase Authenticationを利用するためのインスタンス
  final FirebaseAuth auth = FirebaseAuth.instance;

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // メールアドレス入力フォーム
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'メールアドレス'
                ),
                onChanged: (String val) {
                  email = val;
                },
              ),
            ),
            // パスワード入力フォーム
            Padding(
              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'パスワード'
                ),
                obscureText: true,  // パスワード非表示
                maxLength: 20,
                maxLengthEnforcement: MaxLengthEnforcement.none,  // 入力可能な文字数の制限を超える場合の挙動の制御
                onChanged: (String val) {
                  password = val;
                },
              ),
            ),
            SizedBox(height: 24,),
            // ログインボタン
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 48,
              child: ElevatedButton(
                child: const Text(
                  'ログイン',
                  style: TextStyle(fontSize: 22),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                onPressed: () async {
                  try {
                    // メール/パスワードでログイン
                    final UserCredential result = await auth.signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    // ログインに成功した場合
                    final User user = result.user;
                    print('ログインユーザーのメール⇨${user.email}');
                    // ホーム画面に遷移
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RandomWords(),
                      )
                    );
                  } catch (e) {
                    // ログインに失敗した場合
                    // setState(() {
                      print('ログインエラー：${e.toString()}');                   
                    // });
                  }
                },
              ),
            ),
            SizedBox(height: 12,),
            // パスワード忘れボタン
            TextButton(
              child: Text(
                'パスワードをお忘れですか？',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: (){
                
              }
            ),
            Divider(color: Colors.grey,),
            SizedBox(height: 24,),
            // 新規アカウント作成ボタン
            TextButton(
              child: Text(
                'アカウントを作成',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (BuildContext context) => RegistrationPage(),
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}