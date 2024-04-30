import 'package:dio/dio.dart';

import 'search_model.dart'; // Import the SearchModel

class APIService {
  static final Dio _dio = Dio();

  static Future<List<SearchModel>> search(String query) async {
    try {
      final response = await _dio.post(
        'https://backend-in-db-project.onrender.com/search',
        data: {"title": query}, // Pass the search parameters in the request body
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => SearchModel.fromJson(json)).toList(); // Map JSON to SearchModel
      } else {
        throw Exception('Failed to load search results');
      }
    } catch (e) {
      throw Exception('Failed to connect to the server');
    }
  }
}