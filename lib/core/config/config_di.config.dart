// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:doa_exchange_client/core/helper/api_helper.dart' as _i4;
import 'package:doa_exchange_client/core/helper/raw_helper.dart' as _i3;
import 'package:doa_exchange_client/core/init/dio_config/r_module.dart' as _i8;
import 'package:doa_exchange_client/core/network/remote/exchange/abstract/exchange_service.dart'
    as _i6;
import 'package:doa_exchange_client/core/network/remote/exchange/api/api_exchange_service.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart'
    as _i2; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.singletonAsync<_i3.RawHelper>(
    () => registerModule.config(),
    preResolve: true,
  );
  gh.singleton<_i4.ApiHelper>(_i4.ApiHelper(get<_i3.RawHelper>()));
  gh.singleton<_i5.Dio>(registerModule.dio(get<_i4.ApiHelper>()));
  gh.factory<_i6.ExchangeService>(() => _i7.ExchangeServiceClient(
        get<_i5.Dio>(),
        get<_i4.ApiHelper>(),
      ));
  return get;
}

class _$RegisterModule extends _i8.RegisterModule {}
