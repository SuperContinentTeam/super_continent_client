import 'package:dio/dio.dart';
import 'package:super_continent_client/utils/logger.dart';

class DioAgent {
  Dio dio = Dio();

  DioAgent(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  get(String api, {Map<String, dynamic>? params, Options? options}) async {
    try {
      return await dio.get(api, queryParameters: params, options: options);
    } catch (e) {
      logE("API ERROR: ${dio.options.baseUrl}$api, ${e.toString()}");
    }
  }

  post(String api, Map<String, dynamic> data, {Options? options}) async {
    try{
      return await dio.post(api, data: data, options: options);
    }catch (e) {
      logE("API ERROR: ${dio.options.baseUrl}$api, ${e.toString()}");
    }
  }
}
