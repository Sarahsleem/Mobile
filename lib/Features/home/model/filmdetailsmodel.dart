



class Films {
  final String movieId;

  final String title;
  final String poster;
  final List<String> genres;
  final List<String> cast;

  Films({
    required this.movieId,

    required this.title,
    required this.poster,
    required this.genres,
    required this.cast,
  });

  String toString() {
    return 'Films(movieId: $movieId, title: $title, poster: $poster, genres: $genres, cast: $cast)';
  }
  String getFilmId() {
    return movieId;
  }
  String getFilmTitle() {
    return title;
  }
  String getFilmPoster() {
    return poster;
  }

}
