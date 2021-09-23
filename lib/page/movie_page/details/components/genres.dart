import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/components/genre_card.dart';
import 'package:fluttercrashcourse/constants.dart';
import 'package:fluttercrashcourse/models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length, 
          itemBuilder: (BuildContext context, int index) => GenreCard(
            genre: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
