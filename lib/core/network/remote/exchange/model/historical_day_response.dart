// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'historical_day_response.freezed.dart';
part 'historical_day_response.g.dart';

HistoricalDayResponse historicalDayResponseFromJson(String str) =>
    HistoricalDayResponse.fromJson(json.decode(str));

String historicalDayResponseToJson(HistoricalDayResponse data) =>
    json.encode(data.toJson());

@freezed
class HistoricalDayResponse with _$HistoricalDayResponse {
  const factory HistoricalDayResponse({
    @JsonKey(name: "data") Map<String, CurrencyRates>? data,
  }) = _HistoricalDayResponse;

  factory HistoricalDayResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoricalDayResponseFromJson(json);
}

@freezed
class CurrencyRates with _$CurrencyRates {
  const factory CurrencyRates({
    @JsonKey(name: "EUR") double? eur,
    @JsonKey(name: "GBP") double? gbp,
    @JsonKey(name: "TRY") double? tryValue,
    @JsonKey(name: "USD") double? usd,
  }) = _CurrencyRates;

  factory CurrencyRates.fromJson(Map<String, dynamic> json) =>
      _$CurrencyRatesFromJson(json);
}
