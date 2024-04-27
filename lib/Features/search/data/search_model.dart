import 'package:equatable/equatable.dart';

class SearchModel extends Equatable {
  final String? movieid;
  final String? imdbid;
  final String? tmdbid;
  final String? title;
  final String? poster;
  final List<String>? genres;
  final List<String>? cast;

  const SearchModel({
    this.movieid,
    this.imdbid,
    this.tmdbid,
    this.title,
    this.poster,
    this.genres,
    this.cast,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
        movieid: json['movieid'] as String?,
        imdbid: json['imdbid'] as String?,
        tmdbid: json['tmdbid'] as String?,
        title: json['title'] as String?,
        poster: json['poster'] as String?,
        genres: json['genres'] as List<String>?,
        cast: json['cast'] as List<String>?,
      );

  Map<String, dynamic> toJson() => {
        'movieid': movieid,
        'imdbid': imdbid,
        'tmdbid': tmdbid,
        'title': title,
        'poster': poster,
        'genres': genres,
        'cast': cast,
      };

  @override
  List<Object?> get props {
    return [
      movieid,
      imdbid,
      tmdbid,
      title,
      poster,
      genres,
      cast,
    ];
  }
}
