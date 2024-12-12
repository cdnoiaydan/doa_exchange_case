import 'package:get/get.dart';

class SplashViewController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    redirectToHomePage();
  }

  void redirectToHomePage() async {
    await Future.delayed(const Duration(seconds: 1), () async {
      // Ensure the Hive box is opened before accessing it
      Get.offAllNamed("/home");
    });
  }
}
