import 'package:doa_exchange_client/binding/currency_binding.dart';
import 'package:doa_exchange_client/views/view_home_base/controllers/home_base_controller.dart';
import 'package:doa_exchange_client/views/view_home_base/subviews/currency_view/currency_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final HomeBaseController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('DOA Exchange', style: TextStyle(color: Colors.white)),
        elevation: 1,
        backgroundColor: Colors.orange,
        actions: [
          Obx(() => DropdownButton<String>(
                value: _controller.selectedBaseCurrency.value,
                icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                dropdownColor: Colors.orange[100],
                items: _controller.currencyFlags.keys.map((currency) {
                  return DropdownMenuItem<String>(
                    value: currency,
                    child: Row(
                      children: [
                        Text(_controller.currencyFlags[currency]!,
                            style: const TextStyle(fontSize: 18)),
                        const SizedBox(width: 8),
                        Text(currency,
                            style: const TextStyle(color: Colors.black)),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  if (newValue != null) {
                    _controller.updateSelectedCurrency(newValue);
                  }
                },
              )),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: _controller.currencyFlags.keys
                      .where((currency) =>
                          currency != _controller.selectedBaseCurrency.value)
                      .length,
                  itemBuilder: (context, index) {
                    final currency = _controller.currencyFlags.keys
                        .where((currency) =>
                            currency != _controller.selectedBaseCurrency.value)
                        .elementAt(index);
                    final symbol =
                        "$currency${_controller.selectedBaseCurrency.value}";

                    return Obx(() {
                      final isLoading =
                          _controller.currencyLoading[symbol] == true;
                      if (isLoading) {
                        return const Center(
                            child:
                                CircularProgressIndicator()); // Loading göstergesi
                      }

                      final price =
                          _controller.currencyData[symbol.toUpperCase()];

                      return Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          onTap: () {
                            // CurrencyView sayfasına yönlendir
                            Get.to(
                              () => CurrencyView(),
                              arguments: {
                                'baseCurrency':
                                    _controller.selectedBaseCurrency.value,
                                'targetCurrency': currency,
                              },
                              binding: CurrencyBindings(),
                            );
                          },
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          leading: Text(
                            _controller.currencyFlags[currency]!,
                            style: const TextStyle(fontSize: 24),
                          ),
                          title: Text(
                            currency,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          trailing: price != null
                              ? Text(
                                  price.toStringAsFixed(
                                      4), // 4 ondalık basamak göster

                                  textScaler: const TextScaler.linear(
                                    1.2,
                                  ),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                )
                              : const Text(
                                  "N/A",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                        ),
                      );
                    });
                  },
                );
              }),
            ),
            FloatingActionButton.extended(
              backgroundColor: Colors.orange,
              onPressed: () {
                _controller.fetchCurrencyData();
              },
              icon: const Icon(Icons.refresh, color: Colors.white),
              label: const Text('Refresh',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
