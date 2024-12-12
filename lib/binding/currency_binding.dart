import 'package:doa_exchange_client/views/view_home_base/controllers/currency_view_controller.dart';
import 'package:get/get.dart';

class CurrencyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<CurrencyViewController>(CurrencyViewController());
  }
}
