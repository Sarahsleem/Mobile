import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio _dio;

<<<<<<< HEAD

  ApiService(this._dio);

  Future<Map<String,dynamic>> get({required String endPoint}) async{
   var response=  await  _dio.get('$_baseUrl$endPoint');
   return response.data;
  }
  }
=======
  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
>>>>>>> fe59cd21b46370310a8b128e9dfc49cc064f10de
