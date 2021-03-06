import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/models/movie.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      // containerの縦幅をmax縦幅の4割に設定
      height: size.height * 0.4,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  movie.backdrop
                ),
              )
            ),
          ),
          // レーティング部分
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              // 横幅をmaxの９割に設定
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: Color(0xFF121530).withOpacity(0.2),
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // 星
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/star_fill.svg'),
                      SizedBox(height: kDefaultPadding / 4,),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: '${movie.rating}/',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(text: '10\n'),
                            TextSpan(
                              text: '150,212',
                              style: TextStyle(color: kTextLightColor),
                            ),
                          ]
                        )
                      ),
                    ],
                  ),
                  // 評価星ボタン
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/star.svg'),
                      SizedBox(height: kDefaultPadding/ 4,),
                      Text('評価する', style: Theme.of(context).textTheme.bodyText2,)
                    ],
                  ),
                  // レビュー
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xFF51CF66),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        child: Text(
                          '${movie.metascoreRating}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 4,),
                      Text(
                        'レビュー',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '62件の重要なレビュー',
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ],
                  ),
                ],
              ),
            ), 
          ),
          // 戻るボタン
          SafeArea(child: BackButton()),
        ],
      ),
    );
  }
}