import 'dart:convert';

import 'package:bookly_application/Features/home/model/filmdetailsmodel.dart';
import 'package:dio/dio.dart';


const recommendationApiUrl = "https://backend-in-db-project.onrender.com/recommend";

Future<List<Films>> recommendationApi({ String? id}) async {
  List<Films> filmsList = [];

  try {
    if (id != null) {
      print('id here: $id');
    } else {
      print('id is null');
      return filmsList; // Return empty list if id is null
    }

    final Map<String, dynamic> requestBody = {'id': id};
    final Response response = await Dio().post(recommendationApiUrl, data: requestBody);

    if (response.statusCode == 200 || response.statusCode == 201) {
      final List<dynamic> filmsData = response.data;
      for (var filmDetail in filmsData) {
        filmsList.add(Films(
          movieId: filmDetail['movieid'],
          title: filmDetail['title'],
          poster: filmDetail['poster'],
          genres: List<String>.from(filmDetail['genres']),
          cast: List<String>.from(filmDetail['cast']),
        ));
      }
      print(filmsList);
    } else {
      print('Failed to fetch films. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }

  return filmsList;
}