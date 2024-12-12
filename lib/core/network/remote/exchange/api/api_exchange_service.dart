import 'package:dio/dio.dart';
import 'package:doa_exchange_client/core/helper/api_helper.dart';
import 'package:doa_exchange_client/core/init/dio_config/doa_exchange_dio_client.dart';
import 'package:doa_exchange_client/core/network/remote/exchange/abstract/exchange_service.dart';
import 'package:doa_exchange_client/core/network/remote/exchange/model/historical_day_response.dart';
import 'package:doa_exchange_client/core/network/remote/exchange/model/latest_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_exchange_service.g.dart';

@RestApi()
@Injectable(as: ExchangeService)
abstract class ExchangeServiceClient extends ExchangeService {
  @factoryMethod
  factory ExchangeServiceClient(Dio dio, ApiHelper apiHelper) =>
      _ExchangeServiceClient(
        DoaExchangeDioClient.starter(apiHelper.queryParamGetter),
        baseUrl: apiHelper.apiUrl,
      );

  @override
  @GET("/latest")
  Future<LatestResponse> getLatestExchangeRate(
    @Query("base_currency") String baseCurrency,
    @Query("currencies") String currencies,
  );

  @override
  @GET("/historical")
  Future<HistoricalDayResponse> getHistoricalDay(
    @Query("date") String date,
    @Query("base_currency") String baseCurrency,
    @Query("currencies") String currencies,
  );
}
