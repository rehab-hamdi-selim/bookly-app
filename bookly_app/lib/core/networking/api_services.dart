import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices(this.dio);
  final String baseUrl = "https://www.googleapis.com/books/";

  Future<dynamic> getData({required String endpoint}) async {
    var response = await dio.get('$baseUrl$endpoint');
    return response.data;
  }
}
