import 'package:doa_exchange_client/gen/assets.gen.dart';
import 'package:doa_exchange_client/views/view_splash/controllers/splash_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends GetView<SplashViewController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Assets.images.logo.image(
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
