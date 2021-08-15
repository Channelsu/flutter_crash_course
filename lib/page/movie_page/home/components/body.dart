import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';
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

class GenreCard extends StatelessWidget {
  final String genre;
  const GenreCard({ Key key, this.genre }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(left: kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 4,  // 上下に5のpaddingを設定
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        genre,
        style: TextStyle(
          color: kTextColor.withOpacity(0.8),
          fontSize: 16
        ),
      ),
    );
  }
}
