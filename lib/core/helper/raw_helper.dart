import 'package:flutter/services.dart';

class RawHelper {
  final Map<String, String> _config;

  RawHelper.from(this._config);

  static Future<RawHelper> fromAsset(String assetPath) async {
    final fileData = await rootBundle.loadString(assetPath);
    final config = _parseContent(fileData);
    return RawHelper.from(config);
  }

  static Map<String, String> _parseContent(String content) {
    final lines = content.split('\n');
    final config = <String, String>{};
    for (final line in lines) {
      final keyValue = line.split('=');
      if (keyValue.length == 2) {
        final key = keyValue[0].trim();
        final value = keyValue[1].trim();
        config[key] = value;
      }
    }
    return config;
  }

  String? operator [](String key) => _config[key];
}
