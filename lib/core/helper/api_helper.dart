import 'package:doa_exchange_client/core/helper/raw_helper.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApiHelper {
  final RawHelper _config;

  ApiHelper(this._config);

  String get apiUrl => _config['BASE_URL']!;
  String get queryParamGetter => _config['BASE_KEY']!;
}
