import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/components/genres.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/page/movie_page/home/components/categories.dart';

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
    _pageController = PageController();
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
      
    );
  }
}
