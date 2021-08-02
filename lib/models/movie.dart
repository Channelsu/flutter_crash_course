// Movieモデル
class Movie {
  final int id, year, numOfRating, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop;
  final List<Map> cast;

  Movie({
    this.poster,
    this.backdrop,
    this.title,
    this.id,
    this.year,
    this.numOfRating,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genra,
    this.plot,
    this.cast,
  });
  
  // デモの映画データ
  List<Movie> movies = [
    Movie(),
    
  ];
}