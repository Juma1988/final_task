import 'package:dio/dio.dart';

class DioHelper {
  static final _dio = Dio(BaseOptions(
      baseUrl: 'https://thimar.amr.aait-d.com/api/',
      headers: {'accept': 'application/json'},
      connectTimeout: Duration(seconds: 10)));

   Future<Response> get(String path) async {
    try {
      final response = await _dio.get(path);
      return Response(isSuccess: true, data: response.data);
    } on DioException catch (ex) {
      return handelException(ex);
    }
  }

   static Future<Response> send(String path,{Map<String,dynamic>? data}) async {
    try {
      final response = await _dio.post(path,data: data );
      return Response(isSuccess: true, data: response.data);
    } on DioException catch (ex) {
      return handelException(ex);
    }
  }
}

class Response {
  final bool isSuccess;
  final String? msg;
  final dynamic data;

  Response({required this.isSuccess, this.msg, this.data});
}

Response handelException(DioException ex) {
  // print(ex.response?.data['message']);
  String? msg = ex.response?.data['message'];
  return Response(isSuccess: false, msg: msg ?? ex.type.name);
}
