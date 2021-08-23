import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/models/movie.dart';
import 'package:fluttercrashcourse/page/movie_page/details/details_screen.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  // コンストラクタを右クリックで作成
  const MovieCard({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(
            movie: movie,
          )
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            // 映画画像部分
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [kDefaultShadow],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(movie.poster)
                  )
                ),
              ),
            ),
            // 映画タイトル部分
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                movie.title,
                style: Theme.of(context).textTheme.headline5.copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            // 映画評価部分
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/star_fill.svg',
                  height: 20,
                ),
                SizedBox(width: kDefaultPadding / 2,),
                Text(
                  '${movie.rating}',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
