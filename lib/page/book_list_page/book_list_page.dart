import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/models/book.dart';
import 'package:fluttercrashcourse/provider/books_provider.dart';
import 'package:provider/provider.dart';

class BookListPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String title = '';
    String author = '';
    return ChangeNotifierProvider<BooksProvider>(
      create: (_) => BooksProvider()..fetchBookList(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('本のリスト'),
        ),
        body: Center(
          child: Consumer<BooksProvider>(builder: (context, model, child){
            final List<Book> books = model.books;

            // もしnullならグルグルを表示
            if(books == null) {
              return CircularProgressIndicator();
            }
            // widget型に変換 
            final List<Widget> widgets = books.map((book) => ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
            )).toList();

            return ListView(
              children: widgets,
            );
          },),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('本を追加'),
                  content: Column(
                    // これが無いと縦幅が大きくなる
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'タイトル'
                        ),
                        onChanged: (String val) {
                          title = val;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: '著者'
                        ),
                        onChanged: (String val) {
                          author = val;
                        },
                      ),
                    ]
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Map<String, String> newBook = {
                          "title": title,
                          "author": author,
                        };
                        FirebaseFirestore.instance.collection('books').doc().set(newBook);
                        Navigator.of(context).pop(false);
                      },
                      child: Text('追加'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: Text('キャンセル'),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
