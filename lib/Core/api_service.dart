import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio);

  final String baseUrl = 'https://fakestoreapi.com/products/category/';
  Future<dynamic> get({required String endPoint}) async {
    Response response = await dio.get('$baseUrl$endPoint');

    return response.data;
  }
}
