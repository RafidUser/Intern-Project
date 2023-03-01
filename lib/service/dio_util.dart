import 'package:dio/dio.dart';
import 'package:portal/helper/app_exception.dart';

class DioUtil {
  final dio = Dio();
  final String baseUri = 'http://192.168.0.130:9013/temacs/api/temacs/main/v1';

  DioUtil() {
    dio.options.baseUrl = this.baseUri;
    dio.options.headers.addAll({
      //  'X-Application-Token': '$authorization',
      "Content-Type": "application/json",
      "Accept": "*/*",
    });
  }

  Future<dynamic> post({
    required String uri,
    Map<String, dynamic>? body,
    Map<String, String>? headers,
    Map<String, String>? param,
    encoding,
  }) async {
    if (headers != null) dio.options.headers.addAll(headers);
    try {
      return await dio.post(uri, data: body).then((value) {
        // debugPrint(value.data.toString());
        if (value.data['status'] != null && value.data['status'] == 'error') {
          throw Exception(value.data['data'] ?? 'ERROR');
        } else {
          return value.data;
        }
      });
    } on DioError catch (e) {
      this._returnresponse(e);
    }
  }

  dynamic _returnresponse(DioError error) {
    switch (error.response?.statusCode) {
      case 401:
        throw BadRequestException('Error 401');
      case 400:
        throw RefreshTokenFailedException('Response 401');
      case 500:
        throw FetchDataException(
          'Error 500 : ${error.response?.statusMessage}',
        );
      case 403:
        throw UnauthorisedException(
          error.response?.headers.toString(),
        );
      default:
        throw FetchDataException(
          'Error occured while Communication with Server with StatusCode : ${error.response?.statusCode}',
        );
    }
  }
}
