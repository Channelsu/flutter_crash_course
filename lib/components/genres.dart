import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/components/genre_card.dart';
import 'package:fluttercrashcourse/constants.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'アクション', 'クライム映画', 'コメディー', 'ドラマ映画', 'ホラー', 'アニメ',
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (BuildContext context, int index) => GenreCard(genre: genres[index],),
      ),
    );
  }
}