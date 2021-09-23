import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/models/movie.dart';
import 'package:fluttercrashcourse/page/movie_page/details/components/backdrop_rating.dart';
import 'package:fluttercrashcourse/page/movie_page/details/components/genres.dart';
import 'package:fluttercrashcourse/page/movie_page/details/components/title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 高さと横幅
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        BackdropAndRating(size: size, movie: movie),
        SizedBox(height: kDefaultPadding / 2,),
        // 映画タイトルとプラスボタン部分
        TitleDurationAndFavBtn(movie: movie),
        // タグ部分
        Genres(movie: movie),
      ],
    );
  }
}
