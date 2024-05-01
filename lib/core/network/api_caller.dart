import 'package:dio/dio.dart';
import 'package:nerd_eg_hiring_task/core/errors/exceptions.dart';

class ApiCaller {
  Dio dio = Dio();

  /// I added only get method because we only
  /// Use get request in this app
  Future<Response> getData(String path) async {
    try {
      return dio.get(path);
    } on DioException catch (e) {
      throw ServerException(
        statusCode: e.response?.statusCode ?? 500,
        message: e.message ?? '--',
      );
    }
  }
}

class NetworkConstants {
  static String recipesPath = 'https://api.npoint.io/43427003d33f1f6b51cc';
}
