// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'latest_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LatestResponse _$LatestResponseFromJson(Map<String, dynamic> json) {
  return _LatestResponse.fromJson(json);
}

/// @nodoc
mixin _$LatestResponse {
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestResponseCopyWith<LatestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestResponseCopyWith<$Res> {
  factory $LatestResponseCopyWith(
          LatestResponse value, $Res Function(LatestResponse) then) =
      _$LatestResponseCopyWithImpl<$Res, LatestResponse>;
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LatestResponseCopyWithImpl<$Res, $Val extends LatestResponse>
    implements $LatestResponseCopyWith<$Res> {
  _$LatestResponseCopyWithImpl(this._value, this._then);

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
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LatestResponseImplCopyWith<$Res>
    implements $LatestResponseCopyWith<$Res> {
  factory _$$LatestResponseImplCopyWith(_$LatestResponseImpl value,
          $Res Function(_$LatestResponseImpl) then) =
      __$$LatestResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LatestResponseImplCopyWithImpl<$Res>
    extends _$LatestResponseCopyWithImpl<$Res, _$LatestResponseImpl>
    implements _$$LatestResponseImplCopyWith<$Res> {
  __$$LatestResponseImplCopyWithImpl(
      _$LatestResponseImpl _value, $Res Function(_$LatestResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$LatestResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatestResponseImpl implements _LatestResponse {
  const _$LatestResponseImpl({@JsonKey(name: "data") this.data});

  factory _$LatestResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatestResponseImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final Data? data;

  @override
  String toString() {
    return 'LatestResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatestResponseImplCopyWith<_$LatestResponseImpl> get copyWith =>
      __$$LatestResponseImplCopyWithImpl<_$LatestResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatestResponseImplToJson(
      this,
    );
  }
}

abstract class _LatestResponse implements LatestResponse {
  const factory _LatestResponse({@JsonKey(name: "data") final Data? data}) =
      _$LatestResponseImpl;

  factory _LatestResponse.fromJson(Map<String, dynamic> json) =
      _$LatestResponseImpl.fromJson;

  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$LatestResponseImplCopyWith<_$LatestResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "EUR")
  double? get eur => throw _privateConstructorUsedError;
  @JsonKey(name: "GBP")
  double? get gbp => throw _privateConstructorUsedError;
  @JsonKey(name: "TRY")
  double? get dataTry => throw _privateConstructorUsedError;
  @JsonKey(name: "USD")
  double? get usd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "EUR") double? eur,
      @JsonKey(name: "GBP") double? gbp,
      @JsonKey(name: "TRY") double? dataTry,
      @JsonKey(name: "USD") double? usd});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eur = freezed,
    Object? gbp = freezed,
    Object? dataTry = freezed,
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
      dataTry: freezed == dataTry
          ? _value.dataTry
          : dataTry // ignore: cast_nullable_to_non_nullable
              as double?,
      usd: freezed == usd
          ? _value.usd
          : usd // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "EUR") double? eur,
      @JsonKey(name: "GBP") double? gbp,
      @JsonKey(name: "TRY") double? dataTry,
      @JsonKey(name: "USD") double? usd});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eur = freezed,
    Object? gbp = freezed,
    Object? dataTry = freezed,
    Object? usd = freezed,
  }) {
    return _then(_$DataImpl(
      eur: freezed == eur
          ? _value.eur
          : eur // ignore: cast_nullable_to_non_nullable
              as double?,
      gbp: freezed == gbp
          ? _value.gbp
          : gbp // ignore: cast_nullable_to_non_nullable
              as double?,
      dataTry: freezed == dataTry
          ? _value.dataTry
          : dataTry // ignore: cast_nullable_to_non_nullable
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
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "EUR") this.eur,
      @JsonKey(name: "GBP") this.gbp,
      @JsonKey(name: "TRY") this.dataTry,
      @JsonKey(name: "USD") this.usd});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "EUR")
  final double? eur;
  @override
  @JsonKey(name: "GBP")
  final double? gbp;
  @override
  @JsonKey(name: "TRY")
  final double? dataTry;
  @override
  @JsonKey(name: "USD")
  final double? usd;

  @override
  String toString() {
    return 'Data(eur: $eur, gbp: $gbp, dataTry: $dataTry, usd: $usd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.eur, eur) || other.eur == eur) &&
            (identical(other.gbp, gbp) || other.gbp == gbp) &&
            (identical(other.dataTry, dataTry) || other.dataTry == dataTry) &&
            (identical(other.usd, usd) || other.usd == usd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, eur, gbp, dataTry, usd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "EUR") final double? eur,
      @JsonKey(name: "GBP") final double? gbp,
      @JsonKey(name: "TRY") final double? dataTry,
      @JsonKey(name: "USD") final double? usd}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "EUR")
  double? get eur;
  @override
  @JsonKey(name: "GBP")
  double? get gbp;
  @override
  @JsonKey(name: "TRY")
  double? get dataTry;
  @override
  @JsonKey(name: "USD")
  double? get usd;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
