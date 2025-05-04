import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio;
  ApiServices(this._dio);
  final String _baseUrl = "https://www.googleapis.com/books/";

  Future<dynamic> getData({required String endpoint}) async {
    var response = await _dio.get('$_baseUrl$endpoint');
    return response.data;
  }
}
