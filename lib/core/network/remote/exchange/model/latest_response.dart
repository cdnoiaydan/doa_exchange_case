// To parse this JSON data, do
//
//     final latestResponse = latestResponseFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'latest_response.freezed.dart';
part 'latest_response.g.dart';

LatestResponse latestResponseFromJson(String str) =>
    LatestResponse.fromJson(json.decode(str));

String latestResponseToJson(LatestResponse data) => json.encode(data.toJson());

@freezed
class LatestResponse with _$LatestResponse {
  const factory LatestResponse({
    @JsonKey(name: "data") Data? data,
  }) = _LatestResponse;

  factory LatestResponse.fromJson(Map<String, dynamic> json) =>
      _$LatestResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "EUR") double? eur,
    @JsonKey(name: "GBP") double? gbp,
    @JsonKey(name: "TRY") double? dataTry,
    @JsonKey(name: "USD") double? usd,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
