import 'package:dio/dio.dart';
import 'package:doa_exchange_client/core/init/dio_config/doa_exchange_interceptor_defaults.dart';

class DoaExchangeDioClient {
  static Dio starter(String apiKey) {
    final dio = Dio()
      ..options = BaseOptions(
          connectTimeout: 5000, // 5 seconds
          receiveTimeout: 5000)
      ..options.responseType = ResponseType.json
      ..interceptors.add(DoaExchangeInterceptorDefault(key: apiKey));

    return dio;
  }
}
