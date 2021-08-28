import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/models/movie.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 高さと横幅
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
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
                      Column(),
                    ],
                  ),
                ), 
              ),
            ],
          ),
        ),
      ],
    );
  }
}