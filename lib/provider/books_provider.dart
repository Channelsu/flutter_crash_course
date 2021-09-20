import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/models/book.dart';

class BooksProvider extends ChangeNotifier {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('books').snapshots();
  final _bookCollection = FirebaseFirestore.instance.collection('books');
  // リストがnullになる可能性もあるよという意味
  // List<Book>? books;
  List<Book> books = [];

  void fetchBookList() {
    _usersStream.listen((QuerySnapshot snapshot) {
      // DocumentSnapshot型からBook型へ変換処理
      final List<Book> books = snapshot.docs.map((DocumentSnapshot document) {
        // 以下Bookを作る
        // print(document.data());
        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
        final String title = data['title'];
        final String author = data['author'];
        return Book(title, author);
      }).toList();
      this.books = books;
      notifyListeners();
    });
  }

  void fecthBookList2() async {
    // .get()は変化があったら発火するのではなく、１回しか取らない。⇨リアルタイムで変化があっても反映されない。
    final QuerySnapshot snapshot = await _bookCollection.get();

    final List<Book> books = snapshot.docs.map((DocumentSnapshot document) {
      Map<String, dynamic> data = document.data() as Map<String, dynamic>;
      final String title = data['title'];
      final String author = data['author'];
      return Book(title, author);
    }).toList();

    this.books = books;
    notifyListeners();
  }
}