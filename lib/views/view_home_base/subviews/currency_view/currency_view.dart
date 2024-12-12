import 'package:doa_exchange_client/views/view_home_base/controllers/currency_view_controller.dart';
import 'package:doa_exchange_client/views/view_home_base/subviews/currency_view/widgets/line_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrencyView extends StatelessWidget {
  CurrencyView({Key? key}) : super(key: key);

  final CurrencyViewController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title:
            const Text('DOA Exchange', style: TextStyle(color: Colors.white)),
        elevation: 1,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _controller.targetCurrency,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 5),
              const Text(
                "/",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 5),
              Text(
                _controller.baseCurrency,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(width: 5),
              _getFlag(_controller.targetCurrency),
            ],
          ),
          Obx(
            () {
              if (_controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              if (_controller.errorMessage.value != null) {
                return Center(child: Text(_controller.errorMessage.value!));
              }
              return LineChartSample2(
                controller: _controller,
              ); // Grafiği burada göster
            },
          ),
        ],
      ),
    );
  }

  Widget _getFlag(String currency) {
    switch (currency) {
      case "TRY":
        return const Text("🇹🇷", style: TextStyle(fontSize: 24));
      case "EUR":
        return const Text("🇪🇺", style: TextStyle(fontSize: 24));
      case "GBP":
        return const Text("🇬🇧", style: TextStyle(fontSize: 24));
      case "USD":
        return const Text("🇺🇸", style: TextStyle(fontSize: 24));
      default:
        return const SizedBox.shrink();
    }
  }
}
