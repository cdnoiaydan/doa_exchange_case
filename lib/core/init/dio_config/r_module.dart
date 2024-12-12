import 'package:dio/dio.dart';
import 'package:doa_exchange_client/core/helper/api_helper.dart';
import 'package:doa_exchange_client/core/helper/env_helper.dart';
import 'package:doa_exchange_client/core/helper/raw_helper.dart';
import 'package:injectable/injectable.dart';

part 'query_param_key.dart';

@module
abstract class RegisterModule {
  @singleton
  Dio dio(ApiHelper config) => Dio()
    ..options.baseUrl = config.apiUrl
    ..options
        .queryParameters
        .addAll({QueryParamKey.key.value: config.queryParamGetter});

  @singleton
  @preResolve
  Future<RawHelper> config() async {
    final map = await EnvHelper.load(EnvProjectState.env);

    return RawHelper.from(map);
  }
}
