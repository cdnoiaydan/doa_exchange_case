import 'package:doa_exchange_client/binding/home_base_bindings.dart';
import 'package:doa_exchange_client/binding/splash_bindings.dart';
import 'package:doa_exchange_client/views/view_home_base/subviews/currency_view/currency_view.dart';
import 'package:doa_exchange_client/views/view_home_base/subviews/home/home_view.dart';
import 'package:doa_exchange_client/views/view_splash/view_splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: SplashBindings(),
      getPages: [
        GetPage(
          name: "/splash",
          page: () => const SplashView(),
        ),
        GetPage(
          name: "/home",
          page: () => HomeView(),
          binding: HomeBaseBindings(),
        ),
        GetPage(
          name: "/currency",
          page: () => CurrencyView(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      title: 'DOA Exchange',
      home: const SplashView(),
      darkTheme: ThemeData.dark(),
    );
  }
}
