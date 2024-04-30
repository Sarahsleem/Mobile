import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xff100B20);
const borderColor = Colors.white;
const kTranstionDuration = Duration(milliseconds: 250);
const kAlegreya = 'Gentium';
String? UserId;
String? movieName;
String? movieId;
setUserId(String? id) => UserId = id;
String? getUserId() {
  return UserId;
}

setMovieName(String? name) => movieName = name;
String? getMovieName() {
  return movieName;
}

setMovieId(String? MovieId) => movieId = MovieId;
getMovieId() {
  return movieId;
}
