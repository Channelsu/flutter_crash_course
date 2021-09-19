import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/models/book.dart';
import 'package:fluttercrashcourse/provider/books_provider.dart';
import 'package:provider/provider.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      ),
    );
  }
}
