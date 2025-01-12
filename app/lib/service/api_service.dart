import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _dio.options.baseUrl = 'http://127.0.0.1:8000';
  }

  Future get(
    final String path, {
    final Map<String, dynamic>? params,
  }) async =>
      _dio.get(path, queryParameters: params);

  Future post(
    final String path,
    final Object data, {
    final Options? options,
  }) async =>
      _dio.post(path, data: data);

  Future put(
    final String path,
    final Map<String, dynamic> data,
  ) async =>
      _dio.put(path, data: data);

  Future patch(
    final String path,
    final Map<String, dynamic> data,
  ) async =>
      _dio.patch(path, data: data);

  Future delete(final String path) async => _dio.delete(path);
}
