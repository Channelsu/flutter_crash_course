import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/components/genres.dart';
import 'package:fluttercrashcourse/page/movie_page/home/components/categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(),
        Genres(),
      ],
    );
  }
}
