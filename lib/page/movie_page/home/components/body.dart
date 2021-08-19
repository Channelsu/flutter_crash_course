import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/components/genres.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/models/movie.dart';
import 'package:fluttercrashcourse/page/movie_page/home/components/categories.dart';
import 'package:fluttercrashcourse/page/movie_page/home/components/movie_card.dart';
import 'dart:math' as math;

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoryList(),
        Genres(),
        MovieCarousel(),
      ],
    );
  }
}

class MovieCarousel extends StatefulWidget {
  @override
  _MovieCarouselState createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController _pageController;
  int initialPage = 1;

  @override
  void initState() { 
    super.initState();
    _pageController = PageController(
      // カードの左右に小さく次のカードの一部を表示
      viewportFraction: 0.8,
      // デフォルトを設定
      initialPage: initialPage,
    );
  }

  @override
    void dispose() {
      super.dispose();
      _pageController.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(
        aspectRatio: 0.85,
        child: PageView.builder(
          controller: _pageController,
          itemCount: movies.length,
          itemBuilder: (context, index) => buildMovieSlider(index)
        ),
      ),
    );
  }

  Widget buildMovieSlider(int index) => AnimatedBuilder(
    animation: _pageController,
    builder: (context, child) {
      double value = 0;
      if (_pageController.position.haveDimensions) {
        value = index - _pageController.page;
        // 180 * 0.037 = 7で、ポスターを7スクロールさせる必要があるため、0.038を使用。
        // clampを使用するのはvalueが-1から1まで変化するから
        value = (value * 0.038).clamp(-1, 1);
      }
      return Transform.rotate(
        angle: math.pi * value,
        child: MovieCard(movie: movies[index]),
      );
    },
  );
}
