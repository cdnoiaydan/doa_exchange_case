// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;

import 'package:flutter/foundation.dart';

class EnvHelper {
  static const _lineSplitter = LineSplitter();

  const EnvHelper._();

  static Future<Map<String, String>> load(EnvProjectState state) async {
    final variables = <String, String>{};

    if (!kIsWeb) {
      variables.addAll(Platform.environment);
    }

    String? envGetter(state) {
      switch (state) {
        case EnvProjectState.env:
          return EnvProjectState.env.value;

        default:
          return EnvProjectState.env.value;
      }
    }

    final envFile = envGetter(state);

    final envPath = path.join('assets', 'env', envFile);

    final content = await rootBundle.loadString(envPath);

    final entries = _lineSplitter
        .convert(content)
        .where((line) => line.isNotEmpty)
        .map((line) {
      final split = line.split('=');

      return MapEntry(split[0], split[1]);
    });

    return Map.fromEntries(entries);
  }
}

enum EnvProjectState {
  env('.env');

  final String value;

  const EnvProjectState(this.value);
}
