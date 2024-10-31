import 'package:dio/dio.dart';

//   https://jsonplaceholder.typicode.com/users
class ApiService {
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  final Dio _dio;

  ApiService(this._dio);

  Future<dynamic> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
