import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    // base url, all path in the calls append to this base
    _dio.options.baseUrl = 'http://127.0.0.1:8000/';
  }

  /// call get with a path and optional parameters as map
  Future get(
    final String path, {
    final Map<String, dynamic>? params,
  }) async =>
      _dio.get(path, queryParameters: params);

  /// call post with path and data as object and optional options
  Future post(
    final String path,
    final Object data, {
    final Options? options,
  }) async =>
      _dio.post(path, data: data);

  /// call update with path and data as map
  Future put(
    final String path,
    final Map<String, dynamic> data,
  ) async =>
      _dio.put(path, data: data);

  /// call update with path and data as map
  Future patch(
    final String path,
    final Map<String, dynamic> data,
  ) async =>
      _dio.patch(path, data: data);

  /// call delete with path
  Future delete(final String path) async => _dio.delete(path);
}
