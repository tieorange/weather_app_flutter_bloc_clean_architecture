// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeocodingDto _$GeocodingDtoFromJson(Map<String, dynamic> json) {
  return _GeocodingDto.fromJson(json);
}

/// @nodoc
mixin _$GeocodingDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon')
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'country')
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeocodingDtoCopyWith<GeocodingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodingDtoCopyWith<$Res> {
  factory $GeocodingDtoCopyWith(
          GeocodingDto value, $Res Function(GeocodingDto) then) =
      _$GeocodingDtoCopyWithImpl<$Res, GeocodingDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'lat') double lat,
      @JsonKey(name: 'lon') double lon,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String? state});
}

/// @nodoc
class _$GeocodingDtoCopyWithImpl<$Res, $Val extends GeocodingDto>
    implements $GeocodingDtoCopyWith<$Res> {
  _$GeocodingDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
    Object? country = null,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeocodingDtoImplCopyWith<$Res>
    implements $GeocodingDtoCopyWith<$Res> {
  factory _$$GeocodingDtoImplCopyWith(
          _$GeocodingDtoImpl value, $Res Function(_$GeocodingDtoImpl) then) =
      __$$GeocodingDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'lat') double lat,
      @JsonKey(name: 'lon') double lon,
      @JsonKey(name: 'country') String country,
      @JsonKey(name: 'state') String? state});
}

/// @nodoc
class __$$GeocodingDtoImplCopyWithImpl<$Res>
    extends _$GeocodingDtoCopyWithImpl<$Res, _$GeocodingDtoImpl>
    implements _$$GeocodingDtoImplCopyWith<$Res> {
  __$$GeocodingDtoImplCopyWithImpl(
      _$GeocodingDtoImpl _value, $Res Function(_$GeocodingDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
    Object? country = null,
    Object? state = freezed,
  }) {
    return _then(_$GeocodingDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeocodingDtoImpl implements _GeocodingDto {
  const _$GeocodingDtoImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lon') required this.lon,
      @JsonKey(name: 'country') required this.country,
      @JsonKey(name: 'state') this.state});

  factory _$GeocodingDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeocodingDtoImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'lat')
  final double lat;
  @override
  @JsonKey(name: 'lon')
  final double lon;
  @override
  @JsonKey(name: 'country')
  final String country;
  @override
  @JsonKey(name: 'state')
  final String? state;

  @override
  String toString() {
    return 'GeocodingDto(name: $name, lat: $lat, lon: $lon, country: $country, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeocodingDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lat, lon, country, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeocodingDtoImplCopyWith<_$GeocodingDtoImpl> get copyWith =>
      __$$GeocodingDtoImplCopyWithImpl<_$GeocodingDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeocodingDtoImplToJson(
      this,
    );
  }
}

abstract class _GeocodingDto implements GeocodingDto {
  const factory _GeocodingDto(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'lat') required final double lat,
      @JsonKey(name: 'lon') required final double lon,
      @JsonKey(name: 'country') required final String country,
      @JsonKey(name: 'state') final String? state}) = _$GeocodingDtoImpl;

  factory _GeocodingDto.fromJson(Map<String, dynamic> json) =
      _$GeocodingDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'lon')
  double get lon;
  @override
  @JsonKey(name: 'country')
  String get country;
  @override
  @JsonKey(name: 'state')
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$GeocodingDtoImplCopyWith<_$GeocodingDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
