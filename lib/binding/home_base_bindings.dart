import 'package:doa_exchange_client/views/view_home_base/controllers/home_base_controller.dart';
import 'package:get/get.dart';

class HomeBaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeBaseController>(HomeBaseController());
  }
}
