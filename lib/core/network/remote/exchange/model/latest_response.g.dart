// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LatestResponseImpl _$$LatestResponseImplFromJson(Map<String, dynamic> json) =>
    _$LatestResponseImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LatestResponseImplToJson(
        _$LatestResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      eur: (json['EUR'] as num?)?.toDouble(),
      gbp: (json['GBP'] as num?)?.toDouble(),
      dataTry: (json['TRY'] as num?)?.toDouble(),
      usd: (json['USD'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'EUR': instance.eur,
      'GBP': instance.gbp,
      'TRY': instance.dataTry,
      'USD': instance.usd,
    };
