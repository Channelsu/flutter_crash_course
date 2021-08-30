import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:fluttercrashcourse/page/color_picker_page/color_picker_page.dart';
import 'package:fluttercrashcourse/page/form_page/form_page.dart';
import 'package:fluttercrashcourse/page/form_page/weather_page/weather_page.dart';
import 'package:fluttercrashcourse/page/login_page/login_page.dart';
import 'package:fluttercrashcourse/page/media_query_page/media_query_page.dart';
import 'package:fluttercrashcourse/page/movie_page/home/home_screen.dart';
import 'package:fluttercrashcourse/page/navigator_page/navigator_page.dart';

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _randomWordPairs = <WordPair>[];
  final _savedWordPairs = Set<WordPair>();

  Widget _buildList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, item) {
        // 偶数行なら区切り線を作成、 奇数行なら、_buildRowメソッドを実行
        if (item.isOdd) return Divider();

        final index = item ~/ 2;

        if(index >= _randomWordPairs.length) {
          _randomWordPairs.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_randomWordPairs[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _savedWordPairs.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: TextStyle(fontSize: 18.0),
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if(alreadySaved) {
            _savedWordPairs.remove(pair);
          } else {
            _savedWordPairs.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          final Iterable<ListTile> tiles = 
            _savedWordPairs.map((WordPair pair) {
              return ListTile(
                title: Text(pair.asPascalCase, style: TextStyle(fontSize: 16),),
              );
            });

          final List<Widget> divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('保存された単語'),
            ),
            body: ListView(
              children: divided,
            ),
          );
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タイトル'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.list),
            onPressed: _pushSaved
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
            ),
            ListTile(
              title: Text('ログイン'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  )
                );
              },
            ),
            ListTile(
              title: Text('画面遷移'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavigatorPage(),
                  )
                );
              },
            ),
            ListTile(
              title: Text('MediaQuery'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MediaQueryPage(),
                  )
                );
              },
            ),
            ListTile(
              title: Text('フォーム'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormPage(),
                  )
                );
              },
            ),
            ListTile(
              title: Text('天気'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WeatherPage(),
                  )
                );
              },
            ),
            ListTile(
              title: Text('カラーピッカー'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ColorPickerPage(),
                  )
                );
              },
            ),
            ListTile(
              title: Text('映画アプリ'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  )
                );
              },
            ),
          ],
        ),
      ),
      body: _buildList(),
    );
  }
}
