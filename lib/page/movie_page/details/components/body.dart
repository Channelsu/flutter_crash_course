import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/models/movie.dart';
import 'package:fluttercrashcourse/page/movie_page/details/components/backdrop_rating.dart';

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
        // 映画タイトルとプラスボタン部分
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Row(
            children: [
              // 映画タイトル
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      movie.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    SizedBox(height: kDefaultPadding / 2,),
                    Row(
                      children: [
                        Text(
                          '${movie.year}',
                          style: TextStyle(color: kTextLightColor),
                        ),
                        SizedBox(width: kDefaultPadding,),
                        Text(
                          'PG-13',
                          style: TextStyle(color: kTextLightColor),
                        ),
                        SizedBox(width: kDefaultPadding,),
                        Text(
                          '2時間32分',
                          style: TextStyle(color: kTextLightColor),
                        ),
                      ],
                    ),
                  ],
                )
              ),
              // プラスボタン
              SizedBox(
                height: 64,
                width: 64,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: kSecondaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 28,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

