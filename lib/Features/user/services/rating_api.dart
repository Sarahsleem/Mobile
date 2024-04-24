
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RatingApi{
  static const String baseUrl =
      "https://backend-in-db-project.onrender.com/rating";
  userRating(
      {required BuildContext context,
        required double rating,
        }) async {
    try {
  Map<String, dynamic> requestBody = {
    "userid": '123344567',
    "moviename": 'titanic',
    "rating": rating.toString(),
  };
  Response response = await Dio().post("$baseUrl", data: requestBody);
  
  // Check if response is successful
  if (response.statusCode == 200 || response.statusCode == 201) {
    print('Request successful');
    print('Response: ${response.data}');
  } else {
    // Handle non-200 status code
    print('Request failed with status: ${response.statusCode}');
  }
} catch (e) {
  // Handle Dio exceptions
  print('Request failed with error: $e');
}
  }
}