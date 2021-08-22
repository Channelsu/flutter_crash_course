import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/components/genres.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/page/movie_page/home/components/categories.dart';

import 'package:fluttercrashcourse/page/movie_page/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 画面に入りきらない表示をスクロールさせたい時にSingleChildScrollViewを使う。
    // 通常スクロールできるリストを表示する場合はListViewを使うが、
    // リストではない場合このSingleChildscrollviewを使う。
    return SingleChildScrollView(
      child: Column(
        children: [
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding,),
          MovieCarousel(),
        ],
      ),
    );
  }
}
