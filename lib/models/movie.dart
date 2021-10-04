// Movieモデル
class Movie {
  final int id, year, numOfRatings, criticsReview, metascoreRating;
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
    this.numOfRatings,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genra,
    this.plot,
    this.cast,
  });
}

// デモの映画データ
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Bloodshot",
    year: 2020,
    poster: "assets/images/poster_1.jpg",
    backdrop: "assets/images/backdrop_1.jpg",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Drama"],
    plot: "「ワイルド・スピード」シリーズのビン・ディーゼル主演で、アメコミ「バリアント・コミックス」の人気キャラクター「ブラッドショット」を実写映画化したアクション。",
    cast: [
      {
        "originalName": "田中太郎",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "originalName": "山田次郎",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "originalName": "渡辺花子",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "originalName": "足立雪子",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Ford v Ferrari ",
    year: 2019,
    poster: "assets/images/poster_2.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: "マット・デイモンとクリスチャン・ベールが初共演でダブル主演を務め、1966年のル・マン24時間耐久レースで絶対王者フェラーリに挑んだフォードの男たちを描いたドラマ。",
    cast: [
      {
        "originalName": "田中太郎",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "originalName": "山田次郎",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "originalName": "渡辺花子",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "originalName": "足立雪子",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 1,
    title: "Onward",
    year: 2020,
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: "「リメンバー・ミー」「トイ・ストーリー4」のピクサー・アニメーションによる長編作品。亡くなった父親にもう一度会いたいと願う兄弟が・・・",
    cast: [
      {
        "originalName": "田中太郎",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "originalName": "山田次郎",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "originalName": "渡辺花子",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "originalName": "足立雪子",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
];

// String plotText =
//     "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";