/* class TargetFilm {
  final String movieId;

  final String title;
  final String poster;
  final List<String> genres;
  final List<String> cast;

  TargetFilm({required this.movieId, required this.title, required this.poster, required this.genres, required this.cast});

  factory TargetFilm.fromJson(Map<String, dynamic> json) {
    return TargetFilm(
      movieId: json['movieid'],
      title: json['title'],
      poster: json['poster'],
      genres: json['genres'],
      cast: json['cast'],
    );
  }
} */
class TargetFilm{
  final String movieId;

  final String title;
  final String poster;
  final List<String> genres;
  final List<String> cast;
 TargetFilm({
  required this.movieId, required this.title, required this.poster, required this.genres, required this.cast
 });
 /* Map<String, dynamic> toJson() => {
  'id':uid,
  'bride name' : brideName,
  'groom name' : groomName,
  'wedding day' : weddingDay,
  'wedding style' : WeddingStyle,                            
  'email' : email,
}; */

 factory TargetFilm.fromMap(Map<String, dynamic> json) => TargetFilm(
    movieId: json['movieId'] == null ? null :json['movieId'],
    title: json['title'] == null ? null :json['title'],
    poster: json['poster'] == null ? null :json['poster'],
    genres: json['genres'] == null ? null :json['genres'],
    cast: json['cast'] == null ? null :json['cast'],
   
 );
}
 
