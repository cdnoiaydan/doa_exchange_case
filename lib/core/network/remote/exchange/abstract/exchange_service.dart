import 'package:doa_exchange_client/core/network/remote/exchange/model/historical_day_response.dart';
import 'package:doa_exchange_client/core/network/remote/exchange/model/latest_response.dart';

abstract class ExchangeService {
  Future<LatestResponse> getLatestExchangeRate(
    String baseCurrency,
    String currencies,
  );

  Future<HistoricalDayResponse> getHistoricalDay(
    String date,
    String baseCurrency,
    String currencies,
  );
}
