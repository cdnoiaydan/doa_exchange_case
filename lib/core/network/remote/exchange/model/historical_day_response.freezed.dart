// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'historical_day_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoricalDayResponse _$HistoricalDayResponseFromJson(
    Map<String, dynamic> json) {
  return _HistoricalDayResponse.fromJson(json);
}

/// @nodoc
mixin _$HistoricalDayResponse {
  @JsonKey(name: "data")
  Map<String, CurrencyRates>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoricalDayResponseCopyWith<HistoricalDayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoricalDayResponseCopyWith<$Res> {
  factory $HistoricalDayResponseCopyWith(HistoricalDayResponse value,
          $Res Function(HistoricalDayResponse) then) =
      _$HistoricalDayResponseCopyWithImpl<$Res, HistoricalDayResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") Map<String, CurrencyRates>? data});
}

/// @nodoc
class _$HistoricalDayResponseCopyWithImpl<$Res,
        $Val extends HistoricalDayResponse>
    implements $HistoricalDayResponseCopyWith<$Res> {
  _$HistoricalDayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, CurrencyRates>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoricalDayResponseImplCopyWith<$Res>
    implements $HistoricalDayResponseCopyWith<$Res> {
  factory _$$HistoricalDayResponseImplCopyWith(
          _$HistoricalDayResponseImpl value,
          $Res Function(_$HistoricalDayResponseImpl) then) =
      __$$HistoricalDayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") Map<String, CurrencyRates>? data});
}

/// @nodoc
class __$$HistoricalDayResponseImplCopyWithImpl<$Res>
    extends _$HistoricalDayResponseCopyWithImpl<$Res,
        _$HistoricalDayResponseImpl>
    implements _$$HistoricalDayResponseImplCopyWith<$Res> {
  __$$HistoricalDayResponseImplCopyWithImpl(_$HistoricalDayResponseImpl _value,
      $Res Function(_$HistoricalDayResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$HistoricalDayResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, CurrencyRates>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoricalDayResponseImpl implements _HistoricalDayResponse {
  const _$HistoricalDayResponseImpl(
      {@JsonKey(name: "data") final Map<String, CurrencyRates>? data})
      : _data = data;

  factory _$HistoricalDayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoricalDayResponseImplFromJson(json);

  final Map<String, CurrencyRates>? _data;
  @override
  @JsonKey(name: "data")
  Map<String, CurrencyRates>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'HistoricalDayResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoricalDayResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoricalDayResponseImplCopyWith<_$HistoricalDayResponseImpl>
      get copyWith => __$$HistoricalDayResponseImplCopyWithImpl<
          _$HistoricalDayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoricalDayResponseImplToJson(
      this,
    );
  }
}

abstract class _HistoricalDayResponse implements HistoricalDayResponse {
  const factory _HistoricalDayResponse(
          {@JsonKey(name: "data") final Map<String, CurrencyRates>? data}) =
      _$HistoricalDayResponseImpl;

  factory _HistoricalDayResponse.fromJson(Map<String, dynamic> json) =
      _$HistoricalDayResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Map<String, CurrencyRates>? get data;
  @override
  @JsonKey(ignore: true)
  _$$HistoricalDayResponseImplCopyWith<_$HistoricalDayResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CurrencyRates _$CurrencyRatesFromJson(Map<String, dynamic> json) {
  return _CurrencyRates.fromJson(json);
}

/// @nodoc
mixin _$CurrencyRates {
  @JsonKey(name: "EUR")
  double? get eur => throw _privateConstructorUsedError;
  @JsonKey(name: "GBP")
  double? get gbp => throw _privateConstructorUsedError;
  @JsonKey(name: "TRY")
  double? get tryValue => throw _privateConstructorUsedError;
  @JsonKey(name: "USD")
  double? get usd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyRatesCopyWith<CurrencyRates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyRatesCopyWith<$Res> {
  factory $CurrencyRatesCopyWith(
          CurrencyRates value, $Res Function(CurrencyRates) then) =
      _$CurrencyRatesCopyWithImpl<$Res, CurrencyRates>;
  @useResult
  $Res call(
      {@JsonKey(name: "EUR") double? eur,
      @JsonKey(name: "GBP") double? gbp,
      @JsonKey(name: "TRY") double? tryValue,
      @JsonKey(name: "USD") double? usd});
}

/// @nodoc
class _$CurrencyRatesCopyWithImpl<$Res, $Val extends CurrencyRates>
    implements $CurrencyRatesCopyWith<$Res> {
  _$CurrencyRatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eur = freezed,
    Object? gbp = freezed,
    Object? tryValue = freezed,
    Object? usd = freezed,
  }) {
    return _then(_value.copyWith(
      eur: freezed == eur
          ? _value.eur
          : eur // ignore: cast_nullable_to_non_nullable
              as double?,
      gbp: freezed == gbp
          ? _value.gbp
          : gbp // ignore: cast_nullable_to_non_nullable
              as double?,
      tryValue: freezed == tryValue
          ? _value.tryValue
          : tryValue // ignore: cast_nullable_to_non_nullable
              as double?,
      usd: freezed == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyRatesImplCopyWith<$Res>
    implements $CurrencyRatesCopyWith<$Res> {
  factory _$$CurrencyRatesImplCopyWith(
          _$CurrencyRatesImpl value, $Res Function(_$CurrencyRatesImpl) then) =
      __$$CurrencyRatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "EUR") double? eur,
      @JsonKey(name: "GBP") double? gbp,
      @JsonKey(name: "TRY") double? tryValue,
      @JsonKey(name: "USD") double? usd});
}

/// @nodoc
class __$$CurrencyRatesImplCopyWithImpl<$Res>
    extends _$CurrencyRatesCopyWithImpl<$Res, _$CurrencyRatesImpl>
    implements _$$CurrencyRatesImplCopyWith<$Res> {
  __$$CurrencyRatesImplCopyWithImpl(
      _$CurrencyRatesImpl _value, $Res Function(_$CurrencyRatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eur = freezed,
    Object? gbp = freezed,
    Object? tryValue = freezed,
    Object? usd = freezed,
  }) {
    return _then(_$CurrencyRatesImpl(
      eur: freezed == eur
          ? _value.eur
          : eur // ignore: cast_nullable_to_non_nullable
              as double?,
      gbp: freezed == gbp
          ? _value.gbp
          : gbp // ignore: cast_nullable_to_non_nullable
              as double?,
      tryValue: freezed == tryValue
          ? _value.tryValue
          : tryValue // ignore: cast_nullable_to_non_nullable
              as double?,
      usd: freezed == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrencyRatesImpl implements _CurrencyRates {
  const _$CurrencyRatesImpl(
      {@JsonKey(name: "EUR") this.eur,
      @JsonKey(name: "GBP") this.gbp,
      @JsonKey(name: "TRY") this.tryValue,
      @JsonKey(name: "USD") this.usd});

  factory _$CurrencyRatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrencyRatesImplFromJson(json);

  @override
  @JsonKey(name: "EUR")
  final double? eur;
  @override
  @JsonKey(name: "GBP")
  final double? gbp;
  @override
  @JsonKey(name: "TRY")
  final double? tryValue;
  @override
  @JsonKey(name: "USD")
  final double? usd;

  @override
  String toString() {
    return 'CurrencyRates(eur: $eur, gbp: $gbp, tryValue: $tryValue, usd: $usd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyRatesImpl &&
            (identical(other.eur, eur) || other.eur == eur) &&
            (identical(other.gbp, gbp) || other.gbp == gbp) &&
            (identical(other.tryValue, tryValue) ||
                other.tryValue == tryValue) &&
            (identical(other.usd, usd) || other.usd == usd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eur, gbp, tryValue, usd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyRatesImplCopyWith<_$CurrencyRatesImpl> get copyWith =>
      __$$CurrencyRatesImplCopyWithImpl<_$CurrencyRatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrencyRatesImplToJson(
      this,
    );
  }
}

abstract class _CurrencyRates implements CurrencyRates {
  const factory _CurrencyRates(
      {@JsonKey(name: "EUR") final double? eur,
      @JsonKey(name: "GBP") final double? gbp,
      @JsonKey(name: "TRY") final double? tryValue,
      @JsonKey(name: "USD") final double? usd}) = _$CurrencyRatesImpl;

  factory _CurrencyRates.fromJson(Map<String, dynamic> json) =
      _$CurrencyRatesImpl.fromJson;

  @override
  @JsonKey(name: "EUR")
  double? get eur;
  @override
  @JsonKey(name: "GBP")
  double? get gbp;
  @override
  @JsonKey(name: "TRY")
  double? get tryValue;
  @override
  @JsonKey(name: "USD")
  double? get usd;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyRatesImplCopyWith<_$CurrencyRatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
