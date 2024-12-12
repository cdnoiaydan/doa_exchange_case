import 'package:doa_exchange_client/views/view_splash/controllers/splash_view_controller.dart';
import 'package:get/get.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<SplashViewController>(SplashViewController());
  }
}
