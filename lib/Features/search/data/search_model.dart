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

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return SearchModel(
      movieid: json['movieid'],
      imdbid: json['imdbid'],
      tmdbid: json['tmdbid'],
      title: json['title'],
      poster: json['poster'],
      genres: json['genres'] != null ? List<String>.from(json['genres']) : [],
      cast: json['cast'] != null ? List<String>.from(json['cast']) : [],
    );
  }

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
