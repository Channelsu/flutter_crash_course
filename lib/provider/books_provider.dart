import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/models/book.dart';

class BooksProvider extends ChangeNotifier {
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('books').snapshots();
  
  // リストがnullになる可能性もあるよという意味
  // List<Book>? books;
  List<Book> books = [];

  void fetchBookList() {
    _usersStream.listen((QuerySnapshot snapshot) {
      print(snapshot);
      // DocumentSnapshot型からBook型へ変換処理
      final List<Book> books = snapshot.docs.map((DocumentSnapshot document) {
        // 以下Bookを作る
        Map<String, dynamic> data = document.data() as Map<String, dynamic>;
        final String title = data['title'];
        final String author = data['author'];
        return Book(title, author);
      }).toList();
      this.books = books;
      notifyListeners();
    });
  }
}