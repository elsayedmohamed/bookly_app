import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = "https://www.googleapis.com/books/v1/";

  final Dio dio;

  ApiService(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint,required Map<String, dynamic>? query}) async {
    var response = await dio.get('$_baseUrl$endPoint');

    return response.data;
  }
}
