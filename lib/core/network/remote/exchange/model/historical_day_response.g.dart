// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historical_day_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoricalDayResponseImpl _$$HistoricalDayResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoricalDayResponseImpl(
      data: (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, CurrencyRates.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$HistoricalDayResponseImplToJson(
        _$HistoricalDayResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CurrencyRatesImpl _$$CurrencyRatesImplFromJson(Map<String, dynamic> json) =>
    _$CurrencyRatesImpl(
      eur: (json['EUR'] as num?)?.toDouble(),
      gbp: (json['GBP'] as num?)?.toDouble(),
      tryValue: (json['TRY'] as num?)?.toDouble(),
      usd: (json['USD'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CurrencyRatesImplToJson(_$CurrencyRatesImpl instance) =>
    <String, dynamic>{
      'EUR': instance.eur,
      'GBP': instance.gbp,
      'TRY': instance.tryValue,
      'USD': instance.usd,
    };
