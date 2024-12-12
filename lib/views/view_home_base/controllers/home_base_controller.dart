import 'package:doa_exchange_client/core/network/remote/exchange/abstract/exchange_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class HomeBaseController extends GetxController {
  final _exchangeService = GetIt.I.get<ExchangeService>();
  final RxString selectedBaseCurrency = "TRY".obs;
  final Map<String, String> currencyFlags = {
    "TRY": "🇹🇷",
    "EUR": "🇪🇺",
    "GBP": "🇬🇧",
    "USD": "🇺🇸",
  };
  final RxMap<String, double> currencyData = <String, double>{}.obs;
  final RxMap<String, bool> currencyLoading = <String, bool>{}.obs;
  final Rxn<String> errorMessage = Rxn<String>();

  @override
  void onInit() {
    super.onInit();
    updateSelectedCurrency(selectedBaseCurrency.value);
  }

  Future<void> fetchCurrencyData() async {
    final baseCurrency = selectedBaseCurrency.value;
    final targetCurrencies = currencyFlags.keys
        .where((currency) => currency != baseCurrency)
        .toList();

    currencyLoading.clear();
    currencyData.clear();
    errorMessage.value = null;

    for (final target in targetCurrencies) {
      final symbol = "$target$baseCurrency".toUpperCase();
      currencyLoading[symbol] = true;
    }

    try {
      final response = await _exchangeService.getLatestExchangeRate(
          baseCurrency, targetCurrencies.join(','));

      if (response.data != null) {
        for (final target in targetCurrencies) {
          final symbol = "$target$baseCurrency".toUpperCase();
          if (target == "EUR") {
            currencyData[symbol] = response.data!.eur ?? 0;
          } else if (target == "GBP") {
            currencyData[symbol] = response.data!.gbp ?? 0;
          } else if (target == "TRY") {
            currencyData[symbol] = response.data!.dataTry ?? 0;
          } else if (target == "USD") {
            currencyData[symbol] = response.data!.usd ?? 0;
          }
        }
      } else {
        errorMessage.value = "Invalid response format";
      }
    } catch (e) {
      debugPrint("API isteğinde hata oluştu: $e");
      errorMessage.value = "A network error occurred.";
    } finally {
      currencyLoading.forEach((key, value) {
        currencyLoading[key] = false;
      });
      currencyData.refresh();
    }
  }

  void updateSelectedCurrency(String newCurrency) {
    selectedBaseCurrency.value = newCurrency;
    fetchCurrencyData();
  }
}
