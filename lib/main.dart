import 'package:doa_exchange_client/app.dart';
import 'package:doa_exchange_client/core/config/config_di.dart';
import 'package:flutter/material.dart';

Future<void> main(List<String> args) async {
  await configureDependencies();
  await launchApp();
}

Future<void> launchApp() async {
  runApp(const MainApp());
}
