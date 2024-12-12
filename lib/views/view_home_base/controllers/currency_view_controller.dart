import 'package:doa_exchange_client/core/helper/color_helper.dart';
import 'package:doa_exchange_client/core/network/remote/exchange/abstract/exchange_service.dart';
import 'package:doa_exchange_client/core/network/remote/exchange/model/historical_data_point_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart'; // Tarih işlemleri için eklendi

class CurrencyViewController extends GetxController {
  final _exchangeService = GetIt.I.get<ExchangeService>();
  final RxList<HistoricalDataPoint> historicalData =
      <HistoricalDataPoint>[].obs;
  final RxBool isLoading = true.obs; // Başlangıçta yükleme durumunu true yap
  final Rxn<String> errorMessage = Rxn<String>();

  late String baseCurrency;
  late String targetCurrency;

  List<Color> gradientColors = [
    AppColors.contentColorCyan,
    AppColors.contentColorBlue,
  ];

  // Min ve Max değerleri için RxDouble kullanarak değişiklikleri dinamik olarak takip edebiliriz
  final RxDouble minY = 0.0.obs;
  final RxDouble maxY = 100.0.obs;

  @override
  void onInit() {
    super.onInit();
    final args = Get.arguments as Map<String, dynamic>;
    baseCurrency = args['baseCurrency'];
    targetCurrency = args['targetCurrency'];
    debugPrint(
        "Base Currency: $baseCurrency, Target Currency: $targetCurrency");
    fetchHistoricalData(); // Ekran açıldığında verileri getir
  }

  Future<void> fetchHistoricalData() async {
    try {
      final today = DateTime.now();
      final dateFormat = DateFormat('yyyy-MM-dd');

      for (int i = 1; i <= 7; i++) {
        // Döngü 1'den başlar
        final date = today.subtract(Duration(days: i));
        final formattedDate = dateFormat.format(date);

        debugPrint("Fetching data for: $formattedDate");

        final response = await _exchangeService.getHistoricalDay(
          formattedDate,
          baseCurrency,
          targetCurrency,
        );

        if (response.data != null && response.data!.isNotEmpty) {
          final dataPoint = response.data![formattedDate];
          double? price;

          if (targetCurrency == "EUR") {
            price = dataPoint?.eur;
          } else if (targetCurrency == "GBP") {
            price = dataPoint?.gbp;
          } else if (targetCurrency == "TRY") {
            price = dataPoint?.tryValue;
          } else if (targetCurrency == "USD") {
            price = dataPoint?.usd;
          }

          if (price != null) {
            historicalData.add(HistoricalDataPoint(date: date, price: price));
            debugPrint("Data received for $formattedDate: $price");
          } else {
            debugPrint("no data");
          }
        } else {
          debugPrint("Response data is null or empty for $formattedDate");
        }
      }
      historicalData.sort((a, b) => a.date.compareTo(b.date));

      // Min ve Max değerlerini güncelle
      if (historicalData.isNotEmpty) {
        minY.value =
            historicalData.map((e) => e.price).reduce((a, b) => a < b ? a : b) -
                0.1;
        maxY.value =
            historicalData.map((e) => e.price).reduce((a, b) => a > b ? a : b) +
                0.1;
      }
    } catch (e) {
      debugPrint("API isteğinde hata oluştu: $e");
      errorMessage.value = "A network error occurred.";
    } finally {
      isLoading.value = false;
    }
  }

  List<FlSpot> generateChartData() {
    return historicalData.asMap().entries.map((entry) {
      final index = entry.key;
      final dataPoint = entry.value;
      return FlSpot(index.toDouble(), double.parse(dataPoint.formattedPrice));
    }).toList();
  }

  // Min ve Max değerleri için getter'lar eklendi
  double get minYValue => minY.value;
  double get maxYValue => maxY.value;
}
