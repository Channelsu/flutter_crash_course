import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
            // アカウント作成ボタン
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 48,
              child: ElevatedButton(
                child: const Text(
                  'アカウント作成',
                  style: TextStyle(fontSize: 22),
                ),
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                ),
                onPressed: () async {
                  try {
                    // メールとパスワードでアカウント作成処理
                    final UserCredential result = await auth.createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    // 登録したユーザー情報
                    final User user = result.user;
                    print('登録したユーザーのメール⇨${user.email}');
                  } catch (e) {
                    // 登録に失敗した場合
                    print('登録失敗：${e.toString()}'); 
                  }
                },
              ),
            ),
            SizedBox(height: 48,),
            SafeArea(child: BackButton()),
          ],
        ),
      ),
    );
  }
}