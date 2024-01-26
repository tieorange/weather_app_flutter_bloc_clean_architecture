// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) {
  return _Welcome.fromJson(json);
}

/// @nodoc
mixin _$WeatherDto {
  @JsonKey(name: 'lat')
  double get lat => throw _privateConstructorUsedError;
  @JsonKey(name: 'lon')
  double get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone_offset')
  int get timezoneOffset => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  CurrentWeather get current => throw _privateConstructorUsedError;
  @JsonKey(name: 'hourly')
  List<CurrentWeather> get hourly => throw _privateConstructorUsedError;
  @JsonKey(name: 'daily')
  List<Daily> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDtoCopyWith<WeatherDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDtoCopyWith<$Res> {
  factory $WeatherDtoCopyWith(
          WeatherDto value, $Res Function(WeatherDto) then) =
      _$WeatherDtoCopyWithImpl<$Res, WeatherDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double lat,
      @JsonKey(name: 'lon') double lon,
      @JsonKey(name: 'timezone') String timezone,
      @JsonKey(name: 'timezone_offset') int timezoneOffset,
      @JsonKey(name: 'current') CurrentWeather current,
      @JsonKey(name: 'hourly') List<CurrentWeather> hourly,
      @JsonKey(name: 'daily') List<Daily> daily});

  $CurrentWeatherCopyWith<$Res> get current;
}

/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res, $Val extends WeatherDto>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? current = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      hourly: null == hourly
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<CurrentWeather>,
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentWeatherCopyWith<$Res> get current {
    return $CurrentWeatherCopyWith<$Res>(_value.current, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WelcomeImplCopyWith<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  factory _$$WelcomeImplCopyWith(
          _$WelcomeImpl value, $Res Function(_$WelcomeImpl) then) =
      __$$WelcomeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'lat') double lat,
      @JsonKey(name: 'lon') double lon,
      @JsonKey(name: 'timezone') String timezone,
      @JsonKey(name: 'timezone_offset') int timezoneOffset,
      @JsonKey(name: 'current') CurrentWeather current,
      @JsonKey(name: 'hourly') List<CurrentWeather> hourly,
      @JsonKey(name: 'daily') List<Daily> daily});

  @override
  $CurrentWeatherCopyWith<$Res> get current;
}

/// @nodoc
class __$$WelcomeImplCopyWithImpl<$Res>
    extends _$WeatherDtoCopyWithImpl<$Res, _$WelcomeImpl>
    implements _$$WelcomeImplCopyWith<$Res> {
  __$$WelcomeImplCopyWithImpl(
      _$WelcomeImpl _value, $Res Function(_$WelcomeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lon = null,
    Object? timezone = null,
    Object? timezoneOffset = null,
    Object? current = null,
    Object? hourly = null,
    Object? daily = null,
  }) {
    return _then(_$WelcomeImpl(
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      timezone: null == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String,
      timezoneOffset: null == timezoneOffset
          ? _value.timezoneOffset
          : timezoneOffset // ignore: cast_nullable_to_non_nullable
              as int,
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentWeather,
      hourly: null == hourly
          ? _value._hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<CurrentWeather>,
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<Daily>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WelcomeImpl implements _Welcome {
  const _$WelcomeImpl(
      {@JsonKey(name: 'lat') required this.lat,
      @JsonKey(name: 'lon') required this.lon,
      @JsonKey(name: 'timezone') required this.timezone,
      @JsonKey(name: 'timezone_offset') required this.timezoneOffset,
      @JsonKey(name: 'current') required this.current,
      @JsonKey(name: 'hourly') required final List<CurrentWeather> hourly,
      @JsonKey(name: 'daily') required final List<Daily> daily})
      : _hourly = hourly,
        _daily = daily;

  factory _$WelcomeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WelcomeImplFromJson(json);

  @override
  @JsonKey(name: 'lat')
  final double lat;
  @override
  @JsonKey(name: 'lon')
  final double lon;
  @override
  @JsonKey(name: 'timezone')
  final String timezone;
  @override
  @JsonKey(name: 'timezone_offset')
  final int timezoneOffset;
  @override
  @JsonKey(name: 'current')
  final CurrentWeather current;
  final List<CurrentWeather> _hourly;
  @override
  @JsonKey(name: 'hourly')
  List<CurrentWeather> get hourly {
    if (_hourly is EqualUnmodifiableListView) return _hourly;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hourly);
  }

  final List<Daily> _daily;
  @override
  @JsonKey(name: 'daily')
  List<Daily> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  @override
  String toString() {
    return 'WeatherDto(lat: $lat, lon: $lon, timezone: $timezone, timezoneOffset: $timezoneOffset, current: $current, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WelcomeImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.timezoneOffset, timezoneOffset) ||
                other.timezoneOffset == timezoneOffset) &&
            (identical(other.current, current) || other.current == current) &&
            const DeepCollectionEquality().equals(other._hourly, _hourly) &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      lat,
      lon,
      timezone,
      timezoneOffset,
      current,
      const DeepCollectionEquality().hash(_hourly),
      const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WelcomeImplCopyWith<_$WelcomeImpl> get copyWith =>
      __$$WelcomeImplCopyWithImpl<_$WelcomeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WelcomeImplToJson(
      this,
    );
  }
}

abstract class _Welcome implements WeatherDto {
  const factory _Welcome(
          {@JsonKey(name: 'lat') required final double lat,
          @JsonKey(name: 'lon') required final double lon,
          @JsonKey(name: 'timezone') required final String timezone,
          @JsonKey(name: 'timezone_offset') required final int timezoneOffset,
          @JsonKey(name: 'current') required final CurrentWeather current,
          @JsonKey(name: 'hourly') required final List<CurrentWeather> hourly,
          @JsonKey(name: 'daily') required final List<Daily> daily}) =
      _$WelcomeImpl;

  factory _Welcome.fromJson(Map<String, dynamic> json) = _$WelcomeImpl.fromJson;

  @override
  @JsonKey(name: 'lat')
  double get lat;
  @override
  @JsonKey(name: 'lon')
  double get lon;
  @override
  @JsonKey(name: 'timezone')
  String get timezone;
  @override
  @JsonKey(name: 'timezone_offset')
  int get timezoneOffset;
  @override
  @JsonKey(name: 'current')
  CurrentWeather get current;
  @override
  @JsonKey(name: 'hourly')
  List<CurrentWeather> get hourly;
  @override
  @JsonKey(name: 'daily')
  List<Daily> get daily;
  @override
  @JsonKey(ignore: true)
  _$$WelcomeImplCopyWith<_$WelcomeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) {
  return _Current.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeather {
  @JsonKey(name: 'dt')
  int get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  int? get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  int? get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure')
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'dew_point')
  double get dewPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'uvi')
  double get uvi => throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  int get clouds => throw _privateConstructorUsedError;
  @JsonKey(name: 'visibility')
  int? get visibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<Weather> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  double? get pop => throw _privateConstructorUsedError;
  @JsonKey(name: 'snow')
  Rain? get snow => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain')
  Rain? get rain => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentWeatherCopyWith<CurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherCopyWith<$Res> {
  factory $CurrentWeatherCopyWith(
          CurrentWeather value, $Res Function(CurrentWeather) then) =
      _$CurrentWeatherCopyWithImpl<$Res, CurrentWeather>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'sunrise') int? sunrise,
      @JsonKey(name: 'sunset') int? sunset,
      @JsonKey(name: 'temp') double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'dew_point') double dewPoint,
      @JsonKey(name: 'uvi') double uvi,
      @JsonKey(name: 'clouds') int clouds,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'weather') List<Weather> weather,
      @JsonKey(name: 'pop') double? pop,
      @JsonKey(name: 'snow') Rain? snow,
      @JsonKey(name: 'rain') Rain? rain});

  $RainCopyWith<$Res>? get snow;
  $RainCopyWith<$Res>? get rain;
}

/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res, $Val extends CurrentWeather>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dewPoint = null,
    Object? uvi = null,
    Object? clouds = null,
    Object? visibility = freezed,
    Object? windSpeed = null,
    Object? weather = null,
    Object? pop = freezed,
    Object? snow = freezed,
    Object? rain = freezed,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Rain?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RainCopyWith<$Res>? get snow {
    if (_value.snow == null) {
      return null;
    }

    return $RainCopyWith<$Res>(_value.snow!, (value) {
      return _then(_value.copyWith(snow: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RainCopyWith<$Res>? get rain {
    if (_value.rain == null) {
      return null;
    }

    return $RainCopyWith<$Res>(_value.rain!, (value) {
      return _then(_value.copyWith(rain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentImplCopyWith<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  factory _$$CurrentImplCopyWith(
          _$CurrentImpl value, $Res Function(_$CurrentImpl) then) =
      __$$CurrentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'sunrise') int? sunrise,
      @JsonKey(name: 'sunset') int? sunset,
      @JsonKey(name: 'temp') double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'dew_point') double dewPoint,
      @JsonKey(name: 'uvi') double uvi,
      @JsonKey(name: 'clouds') int clouds,
      @JsonKey(name: 'visibility') int? visibility,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'weather') List<Weather> weather,
      @JsonKey(name: 'pop') double? pop,
      @JsonKey(name: 'snow') Rain? snow,
      @JsonKey(name: 'rain') Rain? rain});

  @override
  $RainCopyWith<$Res>? get snow;
  @override
  $RainCopyWith<$Res>? get rain;
}

/// @nodoc
class __$$CurrentImplCopyWithImpl<$Res>
    extends _$CurrentWeatherCopyWithImpl<$Res, _$CurrentImpl>
    implements _$$CurrentImplCopyWith<$Res> {
  __$$CurrentImplCopyWithImpl(
      _$CurrentImpl _value, $Res Function(_$CurrentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? temp = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dewPoint = null,
    Object? uvi = null,
    Object? clouds = null,
    Object? visibility = freezed,
    Object? windSpeed = null,
    Object? weather = null,
    Object? pop = freezed,
    Object? snow = freezed,
    Object? rain = freezed,
  }) {
    return _then(_$CurrentImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as Rain?,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as Rain?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentImpl implements _Current {
  const _$CurrentImpl(
      {@JsonKey(name: 'dt') required this.dt,
      @JsonKey(name: 'sunrise') this.sunrise,
      @JsonKey(name: 'sunset') this.sunset,
      @JsonKey(name: 'temp') required this.temp,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      @JsonKey(name: 'pressure') required this.pressure,
      @JsonKey(name: 'humidity') required this.humidity,
      @JsonKey(name: 'dew_point') required this.dewPoint,
      @JsonKey(name: 'uvi') required this.uvi,
      @JsonKey(name: 'clouds') required this.clouds,
      @JsonKey(name: 'visibility') this.visibility,
      @JsonKey(name: 'wind_speed') required this.windSpeed,
      @JsonKey(name: 'weather') required final List<Weather> weather,
      @JsonKey(name: 'pop') this.pop,
      @JsonKey(name: 'snow') this.snow,
      @JsonKey(name: 'rain') this.rain})
      : _weather = weather;

  factory _$CurrentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentImplFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int dt;
  @override
  @JsonKey(name: 'sunrise')
  final int? sunrise;
  @override
  @JsonKey(name: 'sunset')
  final int? sunset;
  @override
  @JsonKey(name: 'temp')
  final double temp;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @override
  @JsonKey(name: 'pressure')
  final int pressure;
  @override
  @JsonKey(name: 'humidity')
  final int humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double dewPoint;
  @override
  @JsonKey(name: 'uvi')
  final double uvi;
  @override
  @JsonKey(name: 'clouds')
  final int clouds;
  @override
  @JsonKey(name: 'visibility')
  final int? visibility;
  @override
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  final List<Weather> _weather;
  @override
  @JsonKey(name: 'weather')
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'pop')
  final double? pop;
  @override
  @JsonKey(name: 'snow')
  final Rain? snow;
  @override
  @JsonKey(name: 'rain')
  final Rain? rain;

  @override
  String toString() {
    return 'CurrentWeather(dt: $dt, sunrise: $sunrise, sunset: $sunset, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, uvi: $uvi, clouds: $clouds, visibility: $visibility, windSpeed: $windSpeed, weather: $weather, pop: $pop, snow: $snow, rain: $rain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.uvi, uvi) || other.uvi == uvi) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.snow, snow) || other.snow == snow) &&
            (identical(other.rain, rain) || other.rain == rain));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      sunrise,
      sunset,
      temp,
      feelsLike,
      pressure,
      humidity,
      dewPoint,
      uvi,
      clouds,
      visibility,
      windSpeed,
      const DeepCollectionEquality().hash(_weather),
      pop,
      snow,
      rain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      __$$CurrentImplCopyWithImpl<_$CurrentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentImplToJson(
      this,
    );
  }
}

abstract class _Current implements CurrentWeather {
  const factory _Current(
      {@JsonKey(name: 'dt') required final int dt,
      @JsonKey(name: 'sunrise') final int? sunrise,
      @JsonKey(name: 'sunset') final int? sunset,
      @JsonKey(name: 'temp') required final double temp,
      @JsonKey(name: 'feels_like') required final double feelsLike,
      @JsonKey(name: 'pressure') required final int pressure,
      @JsonKey(name: 'humidity') required final int humidity,
      @JsonKey(name: 'dew_point') required final double dewPoint,
      @JsonKey(name: 'uvi') required final double uvi,
      @JsonKey(name: 'clouds') required final int clouds,
      @JsonKey(name: 'visibility') final int? visibility,
      @JsonKey(name: 'wind_speed') required final double windSpeed,
      @JsonKey(name: 'weather') required final List<Weather> weather,
      @JsonKey(name: 'pop') final double? pop,
      @JsonKey(name: 'snow') final Rain? snow,
      @JsonKey(name: 'rain') final Rain? rain}) = _$CurrentImpl;

  factory _Current.fromJson(Map<String, dynamic> json) = _$CurrentImpl.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get dt;
  @override
  @JsonKey(name: 'sunrise')
  int? get sunrise;
  @override
  @JsonKey(name: 'sunset')
  int? get sunset;
  @override
  @JsonKey(name: 'temp')
  double get temp;
  @override
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @override
  @JsonKey(name: 'pressure')
  int get pressure;
  @override
  @JsonKey(name: 'humidity')
  int get humidity;
  @override
  @JsonKey(name: 'dew_point')
  double get dewPoint;
  @override
  @JsonKey(name: 'uvi')
  double get uvi;
  @override
  @JsonKey(name: 'clouds')
  int get clouds;
  @override
  @JsonKey(name: 'visibility')
  int? get visibility;
  @override
  @JsonKey(name: 'wind_speed')
  double get windSpeed;
  @override
  @JsonKey(name: 'weather')
  List<Weather> get weather;
  @override
  @JsonKey(name: 'pop')
  double? get pop;
  @override
  @JsonKey(name: 'snow')
  Rain? get snow;
  @override
  @JsonKey(name: 'rain')
  Rain? get rain;
  @override
  @JsonKey(ignore: true)
  _$$CurrentImplCopyWith<_$CurrentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Rain _$RainFromJson(Map<String, dynamic> json) {
  return _Rain.fromJson(json);
}

/// @nodoc
mixin _$Rain {
  @JsonKey(name: '1h')
  double get the1H => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RainCopyWith<Rain> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainCopyWith<$Res> {
  factory $RainCopyWith(Rain value, $Res Function(Rain) then) =
      _$RainCopyWithImpl<$Res, Rain>;
  @useResult
  $Res call({@JsonKey(name: '1h') double the1H});
}

/// @nodoc
class _$RainCopyWithImpl<$Res, $Val extends Rain>
    implements $RainCopyWith<$Res> {
  _$RainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the1H = null,
  }) {
    return _then(_value.copyWith(
      the1H: null == the1H
          ? _value.the1H
          : the1H // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainImplCopyWith<$Res> implements $RainCopyWith<$Res> {
  factory _$$RainImplCopyWith(
          _$RainImpl value, $Res Function(_$RainImpl) then) =
      __$$RainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '1h') double the1H});
}

/// @nodoc
class __$$RainImplCopyWithImpl<$Res>
    extends _$RainCopyWithImpl<$Res, _$RainImpl>
    implements _$$RainImplCopyWith<$Res> {
  __$$RainImplCopyWithImpl(_$RainImpl _value, $Res Function(_$RainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? the1H = null,
  }) {
    return _then(_$RainImpl(
      the1H: null == the1H
          ? _value.the1H
          : the1H // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainImpl implements _Rain {
  const _$RainImpl({@JsonKey(name: '1h') required this.the1H});

  factory _$RainImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainImplFromJson(json);

  @override
  @JsonKey(name: '1h')
  final double the1H;

  @override
  String toString() {
    return 'Rain(the1H: $the1H)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainImpl &&
            (identical(other.the1H, the1H) || other.the1H == the1H));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, the1H);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RainImplCopyWith<_$RainImpl> get copyWith =>
      __$$RainImplCopyWithImpl<_$RainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainImplToJson(
      this,
    );
  }
}

abstract class _Rain implements Rain {
  const factory _Rain({@JsonKey(name: '1h') required final double the1H}) =
      _$RainImpl;

  factory _Rain.fromJson(Map<String, dynamic> json) = _$RainImpl.fromJson;

  @override
  @JsonKey(name: '1h')
  double get the1H;
  @override
  @JsonKey(ignore: true)
  _$$RainImplCopyWith<_$RainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  WeatherType get main => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  Description get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  WeatherIcon get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'main') WeatherType main,
      @JsonKey(name: 'description') Description description,
      @JsonKey(name: 'icon') WeatherIcon icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherIcon,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherImplCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$WeatherImplCopyWith(
          _$WeatherImpl value, $Res Function(_$WeatherImpl) then) =
      __$$WeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'main') WeatherType main,
      @JsonKey(name: 'description') Description description,
      @JsonKey(name: 'icon') WeatherIcon icon});
}

/// @nodoc
class __$$WeatherImplCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$WeatherImpl>
    implements _$$WeatherImplCopyWith<$Res> {
  __$$WeatherImplCopyWithImpl(
      _$WeatherImpl _value, $Res Function(_$WeatherImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_$WeatherImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as WeatherType,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as WeatherIcon,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherImpl implements _Weather {
  const _$WeatherImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'main') required this.main,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'icon') required this.icon});

  factory _$WeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'main')
  final WeatherType main;
  @override
  @JsonKey(name: 'description')
  final Description description;
  @override
  @JsonKey(name: 'icon')
  final WeatherIcon icon;

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      __$$WeatherImplCopyWithImpl<_$WeatherImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherImplToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'main') required final WeatherType main,
      @JsonKey(name: 'description') required final Description description,
      @JsonKey(name: 'icon') required final WeatherIcon icon}) = _$WeatherImpl;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$WeatherImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'main')
  WeatherType get main;
  @override
  @JsonKey(name: 'description')
  Description get description;
  @override
  @JsonKey(name: 'icon')
  WeatherIcon get icon;
  @override
  @JsonKey(ignore: true)
  _$$WeatherImplCopyWith<_$WeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  @JsonKey(name: 'dt')
  int get dt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunrise')
  int get sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'sunset')
  int get sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'moonrise')
  int get moonrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'moonset')
  int get moonset => throw _privateConstructorUsedError;
  @JsonKey(name: 'moon_phase')
  double get moonPhase => throw _privateConstructorUsedError;
  @JsonKey(name: 'summary')
  String get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  Temp get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  FeelsLike get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'pressure')
  int get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  int get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'dew_point')
  double get dewPoint => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_speed')
  double get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<Weather> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'clouds')
  int get clouds => throw _privateConstructorUsedError;
  @JsonKey(name: 'pop')
  double get pop => throw _privateConstructorUsedError;
  @JsonKey(name: 'rain')
  double? get rain => throw _privateConstructorUsedError;
  @JsonKey(name: 'snow')
  double? get snow => throw _privateConstructorUsedError;
  @JsonKey(name: 'uvi')
  double get uvi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'sunrise') int sunrise,
      @JsonKey(name: 'sunset') int sunset,
      @JsonKey(name: 'moonrise') int moonrise,
      @JsonKey(name: 'moonset') int moonset,
      @JsonKey(name: 'moon_phase') double moonPhase,
      @JsonKey(name: 'summary') String summary,
      @JsonKey(name: 'temp') Temp temp,
      @JsonKey(name: 'feels_like') FeelsLike feelsLike,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'dew_point') double dewPoint,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'weather') List<Weather> weather,
      @JsonKey(name: 'clouds') int clouds,
      @JsonKey(name: 'pop') double pop,
      @JsonKey(name: 'rain') double? rain,
      @JsonKey(name: 'snow') double? snow,
      @JsonKey(name: 'uvi') double uvi});

  $TempCopyWith<$Res> get temp;
  $FeelsLikeCopyWith<$Res> get feelsLike;
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
    Object? moonPhase = null,
    Object? summary = null,
    Object? temp = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dewPoint = null,
    Object? windSpeed = null,
    Object? weather = null,
    Object? clouds = null,
    Object? pop = null,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? uvi = null,
  }) {
    return _then(_value.copyWith(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int,
      moonPhase: null == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TempCopyWith<$Res> get temp {
    return $TempCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeelsLikeCopyWith<$Res> get feelsLike {
    return $FeelsLikeCopyWith<$Res>(_value.feelsLike, (value) {
      return _then(_value.copyWith(feelsLike: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dt,
      @JsonKey(name: 'sunrise') int sunrise,
      @JsonKey(name: 'sunset') int sunset,
      @JsonKey(name: 'moonrise') int moonrise,
      @JsonKey(name: 'moonset') int moonset,
      @JsonKey(name: 'moon_phase') double moonPhase,
      @JsonKey(name: 'summary') String summary,
      @JsonKey(name: 'temp') Temp temp,
      @JsonKey(name: 'feels_like') FeelsLike feelsLike,
      @JsonKey(name: 'pressure') int pressure,
      @JsonKey(name: 'humidity') int humidity,
      @JsonKey(name: 'dew_point') double dewPoint,
      @JsonKey(name: 'wind_speed') double windSpeed,
      @JsonKey(name: 'weather') List<Weather> weather,
      @JsonKey(name: 'clouds') int clouds,
      @JsonKey(name: 'pop') double pop,
      @JsonKey(name: 'rain') double? rain,
      @JsonKey(name: 'snow') double? snow,
      @JsonKey(name: 'uvi') double uvi});

  @override
  $TempCopyWith<$Res> get temp;
  @override
  $FeelsLikeCopyWith<$Res> get feelsLike;
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? moonrise = null,
    Object? moonset = null,
    Object? moonPhase = null,
    Object? summary = null,
    Object? temp = null,
    Object? feelsLike = null,
    Object? pressure = null,
    Object? humidity = null,
    Object? dewPoint = null,
    Object? windSpeed = null,
    Object? weather = null,
    Object? clouds = null,
    Object? pop = null,
    Object? rain = freezed,
    Object? snow = freezed,
    Object? uvi = null,
  }) {
    return _then(_$DailyImpl(
      dt: null == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      moonrise: null == moonrise
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int,
      moonset: null == moonset
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int,
      moonPhase: null == moonPhase
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as Temp,
      feelsLike: null == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLike,
      pressure: null == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      dewPoint: null == dewPoint
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      rain: freezed == rain
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      snow: freezed == snow
          ? _value.snow
          : snow // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: null == uvi
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl(
      {@JsonKey(name: 'dt') required this.dt,
      @JsonKey(name: 'sunrise') required this.sunrise,
      @JsonKey(name: 'sunset') required this.sunset,
      @JsonKey(name: 'moonrise') required this.moonrise,
      @JsonKey(name: 'moonset') required this.moonset,
      @JsonKey(name: 'moon_phase') required this.moonPhase,
      @JsonKey(name: 'summary') required this.summary,
      @JsonKey(name: 'temp') required this.temp,
      @JsonKey(name: 'feels_like') required this.feelsLike,
      @JsonKey(name: 'pressure') required this.pressure,
      @JsonKey(name: 'humidity') required this.humidity,
      @JsonKey(name: 'dew_point') required this.dewPoint,
      @JsonKey(name: 'wind_speed') required this.windSpeed,
      @JsonKey(name: 'weather') required final List<Weather> weather,
      @JsonKey(name: 'clouds') required this.clouds,
      @JsonKey(name: 'pop') required this.pop,
      @JsonKey(name: 'rain') this.rain,
      @JsonKey(name: 'snow') this.snow,
      @JsonKey(name: 'uvi') required this.uvi})
      : _weather = weather;

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int dt;
  @override
  @JsonKey(name: 'sunrise')
  final int sunrise;
  @override
  @JsonKey(name: 'sunset')
  final int sunset;
  @override
  @JsonKey(name: 'moonrise')
  final int moonrise;
  @override
  @JsonKey(name: 'moonset')
  final int moonset;
  @override
  @JsonKey(name: 'moon_phase')
  final double moonPhase;
  @override
  @JsonKey(name: 'summary')
  final String summary;
  @override
  @JsonKey(name: 'temp')
  final Temp temp;
  @override
  @JsonKey(name: 'feels_like')
  final FeelsLike feelsLike;
  @override
  @JsonKey(name: 'pressure')
  final int pressure;
  @override
  @JsonKey(name: 'humidity')
  final int humidity;
  @override
  @JsonKey(name: 'dew_point')
  final double dewPoint;
  @override
  @JsonKey(name: 'wind_speed')
  final double windSpeed;
  final List<Weather> _weather;
  @override
  @JsonKey(name: 'weather')
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'clouds')
  final int clouds;
  @override
  @JsonKey(name: 'pop')
  final double pop;
  @override
  @JsonKey(name: 'rain')
  final double? rain;
  @override
  @JsonKey(name: 'snow')
  final double? snow;
  @override
  @JsonKey(name: 'uvi')
  final double uvi;

  @override
  String toString() {
    return 'Daily(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, summary: $summary, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, weather: $weather, clouds: $clouds, pop: $pop, rain: $rain, snow: $snow, uvi: $uvi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.moonrise, moonrise) ||
                other.moonrise == moonrise) &&
            (identical(other.moonset, moonset) || other.moonset == moonset) &&
            (identical(other.moonPhase, moonPhase) ||
                other.moonPhase == moonPhase) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.dewPoint, dewPoint) ||
                other.dewPoint == dewPoint) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.rain, rain) || other.rain == rain) &&
            (identical(other.snow, snow) || other.snow == snow) &&
            (identical(other.uvi, uvi) || other.uvi == uvi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        dt,
        sunrise,
        sunset,
        moonrise,
        moonset,
        moonPhase,
        summary,
        temp,
        feelsLike,
        pressure,
        humidity,
        dewPoint,
        windSpeed,
        const DeepCollectionEquality().hash(_weather),
        clouds,
        pop,
        rain,
        snow,
        uvi
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {@JsonKey(name: 'dt') required final int dt,
      @JsonKey(name: 'sunrise') required final int sunrise,
      @JsonKey(name: 'sunset') required final int sunset,
      @JsonKey(name: 'moonrise') required final int moonrise,
      @JsonKey(name: 'moonset') required final int moonset,
      @JsonKey(name: 'moon_phase') required final double moonPhase,
      @JsonKey(name: 'summary') required final String summary,
      @JsonKey(name: 'temp') required final Temp temp,
      @JsonKey(name: 'feels_like') required final FeelsLike feelsLike,
      @JsonKey(name: 'pressure') required final int pressure,
      @JsonKey(name: 'humidity') required final int humidity,
      @JsonKey(name: 'dew_point') required final double dewPoint,
      @JsonKey(name: 'wind_speed') required final double windSpeed,
      @JsonKey(name: 'weather') required final List<Weather> weather,
      @JsonKey(name: 'clouds') required final int clouds,
      @JsonKey(name: 'pop') required final double pop,
      @JsonKey(name: 'rain') final double? rain,
      @JsonKey(name: 'snow') final double? snow,
      @JsonKey(name: 'uvi') required final double uvi}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get dt;
  @override
  @JsonKey(name: 'sunrise')
  int get sunrise;
  @override
  @JsonKey(name: 'sunset')
  int get sunset;
  @override
  @JsonKey(name: 'moonrise')
  int get moonrise;
  @override
  @JsonKey(name: 'moonset')
  int get moonset;
  @override
  @JsonKey(name: 'moon_phase')
  double get moonPhase;
  @override
  @JsonKey(name: 'summary')
  String get summary;
  @override
  @JsonKey(name: 'temp')
  Temp get temp;
  @override
  @JsonKey(name: 'feels_like')
  FeelsLike get feelsLike;
  @override
  @JsonKey(name: 'pressure')
  int get pressure;
  @override
  @JsonKey(name: 'humidity')
  int get humidity;
  @override
  @JsonKey(name: 'dew_point')
  double get dewPoint;
  @override
  @JsonKey(name: 'wind_speed')
  double get windSpeed;
  @override
  @JsonKey(name: 'weather')
  List<Weather> get weather;
  @override
  @JsonKey(name: 'clouds')
  int get clouds;
  @override
  @JsonKey(name: 'pop')
  double get pop;
  @override
  @JsonKey(name: 'rain')
  double? get rain;
  @override
  @JsonKey(name: 'snow')
  double? get snow;
  @override
  @JsonKey(name: 'uvi')
  double get uvi;
  @override
  @JsonKey(ignore: true)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) {
  return _FeelsLike.fromJson(json);
}

/// @nodoc
mixin _$FeelsLike {
  @JsonKey(name: 'day')
  double get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'night')
  double get night => throw _privateConstructorUsedError;
  @JsonKey(name: 'eve')
  double get eve => throw _privateConstructorUsedError;
  @JsonKey(name: 'morn')
  double get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelsLikeCopyWith<FeelsLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelsLikeCopyWith<$Res> {
  factory $FeelsLikeCopyWith(FeelsLike value, $Res Function(FeelsLike) then) =
      _$FeelsLikeCopyWithImpl<$Res, FeelsLike>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day') double day,
      @JsonKey(name: 'night') double night,
      @JsonKey(name: 'eve') double eve,
      @JsonKey(name: 'morn') double morn});
}

/// @nodoc
class _$FeelsLikeCopyWithImpl<$Res, $Val extends FeelsLike>
    implements $FeelsLikeCopyWith<$Res> {
  _$FeelsLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? night = null,
    Object? eve = null,
    Object? morn = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: null == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: null == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeelsLikeImplCopyWith<$Res>
    implements $FeelsLikeCopyWith<$Res> {
  factory _$$FeelsLikeImplCopyWith(
          _$FeelsLikeImpl value, $Res Function(_$FeelsLikeImpl) then) =
      __$$FeelsLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day') double day,
      @JsonKey(name: 'night') double night,
      @JsonKey(name: 'eve') double eve,
      @JsonKey(name: 'morn') double morn});
}

/// @nodoc
class __$$FeelsLikeImplCopyWithImpl<$Res>
    extends _$FeelsLikeCopyWithImpl<$Res, _$FeelsLikeImpl>
    implements _$$FeelsLikeImplCopyWith<$Res> {
  __$$FeelsLikeImplCopyWithImpl(
      _$FeelsLikeImpl _value, $Res Function(_$FeelsLikeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? night = null,
    Object? eve = null,
    Object? morn = null,
  }) {
    return _then(_$FeelsLikeImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: null == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: null == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeelsLikeImpl implements _FeelsLike {
  const _$FeelsLikeImpl(
      {@JsonKey(name: 'day') required this.day,
      @JsonKey(name: 'night') required this.night,
      @JsonKey(name: 'eve') required this.eve,
      @JsonKey(name: 'morn') required this.morn});

  factory _$FeelsLikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeelsLikeImplFromJson(json);

  @override
  @JsonKey(name: 'day')
  final double day;
  @override
  @JsonKey(name: 'night')
  final double night;
  @override
  @JsonKey(name: 'eve')
  final double eve;
  @override
  @JsonKey(name: 'morn')
  final double morn;

  @override
  String toString() {
    return 'FeelsLike(day: $day, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeelsLikeImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, night, eve, morn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeelsLikeImplCopyWith<_$FeelsLikeImpl> get copyWith =>
      __$$FeelsLikeImplCopyWithImpl<_$FeelsLikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeelsLikeImplToJson(
      this,
    );
  }
}

abstract class _FeelsLike implements FeelsLike {
  const factory _FeelsLike(
      {@JsonKey(name: 'day') required final double day,
      @JsonKey(name: 'night') required final double night,
      @JsonKey(name: 'eve') required final double eve,
      @JsonKey(name: 'morn') required final double morn}) = _$FeelsLikeImpl;

  factory _FeelsLike.fromJson(Map<String, dynamic> json) =
      _$FeelsLikeImpl.fromJson;

  @override
  @JsonKey(name: 'day')
  double get day;
  @override
  @JsonKey(name: 'night')
  double get night;
  @override
  @JsonKey(name: 'eve')
  double get eve;
  @override
  @JsonKey(name: 'morn')
  double get morn;
  @override
  @JsonKey(ignore: true)
  _$$FeelsLikeImplCopyWith<_$FeelsLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Temp _$TempFromJson(Map<String, dynamic> json) {
  return _Temp.fromJson(json);
}

/// @nodoc
mixin _$Temp {
  @JsonKey(name: 'day')
  double get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'min')
  double get min => throw _privateConstructorUsedError;
  @JsonKey(name: 'max')
  double get max => throw _privateConstructorUsedError;
  @JsonKey(name: 'night')
  double get night => throw _privateConstructorUsedError;
  @JsonKey(name: 'eve')
  double get eve => throw _privateConstructorUsedError;
  @JsonKey(name: 'morn')
  double get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempCopyWith<Temp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempCopyWith<$Res> {
  factory $TempCopyWith(Temp value, $Res Function(Temp) then) =
      _$TempCopyWithImpl<$Res, Temp>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day') double day,
      @JsonKey(name: 'min') double min,
      @JsonKey(name: 'max') double max,
      @JsonKey(name: 'night') double night,
      @JsonKey(name: 'eve') double eve,
      @JsonKey(name: 'morn') double morn});
}

/// @nodoc
class _$TempCopyWithImpl<$Res, $Val extends Temp>
    implements $TempCopyWith<$Res> {
  _$TempCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? min = null,
    Object? max = null,
    Object? night = null,
    Object? eve = null,
    Object? morn = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: null == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: null == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempImplCopyWith<$Res> implements $TempCopyWith<$Res> {
  factory _$$TempImplCopyWith(
          _$TempImpl value, $Res Function(_$TempImpl) then) =
      __$$TempImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day') double day,
      @JsonKey(name: 'min') double min,
      @JsonKey(name: 'max') double max,
      @JsonKey(name: 'night') double night,
      @JsonKey(name: 'eve') double eve,
      @JsonKey(name: 'morn') double morn});
}

/// @nodoc
class __$$TempImplCopyWithImpl<$Res>
    extends _$TempCopyWithImpl<$Res, _$TempImpl>
    implements _$$TempImplCopyWith<$Res> {
  __$$TempImplCopyWithImpl(_$TempImpl _value, $Res Function(_$TempImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? min = null,
    Object? max = null,
    Object? night = null,
    Object? eve = null,
    Object? morn = null,
  }) {
    return _then(_$TempImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
      eve: null == eve
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double,
      morn: null == morn
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempImpl implements _Temp {
  const _$TempImpl(
      {@JsonKey(name: 'day') required this.day,
      @JsonKey(name: 'min') required this.min,
      @JsonKey(name: 'max') required this.max,
      @JsonKey(name: 'night') required this.night,
      @JsonKey(name: 'eve') required this.eve,
      @JsonKey(name: 'morn') required this.morn});

  factory _$TempImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempImplFromJson(json);

  @override
  @JsonKey(name: 'day')
  final double day;
  @override
  @JsonKey(name: 'min')
  final double min;
  @override
  @JsonKey(name: 'max')
  final double max;
  @override
  @JsonKey(name: 'night')
  final double night;
  @override
  @JsonKey(name: 'eve')
  final double eve;
  @override
  @JsonKey(name: 'morn')
  final double morn;

  @override
  String toString() {
    return 'Temp(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night) &&
            (identical(other.eve, eve) || other.eve == eve) &&
            (identical(other.morn, morn) || other.morn == morn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max, night, eve, morn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      __$$TempImplCopyWithImpl<_$TempImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempImplToJson(
      this,
    );
  }
}

abstract class _Temp implements Temp {
  const factory _Temp(
      {@JsonKey(name: 'day') required final double day,
      @JsonKey(name: 'min') required final double min,
      @JsonKey(name: 'max') required final double max,
      @JsonKey(name: 'night') required final double night,
      @JsonKey(name: 'eve') required final double eve,
      @JsonKey(name: 'morn') required final double morn}) = _$TempImpl;

  factory _Temp.fromJson(Map<String, dynamic> json) = _$TempImpl.fromJson;

  @override
  @JsonKey(name: 'day')
  double get day;
  @override
  @JsonKey(name: 'min')
  double get min;
  @override
  @JsonKey(name: 'max')
  double get max;
  @override
  @JsonKey(name: 'night')
  double get night;
  @override
  @JsonKey(name: 'eve')
  double get eve;
  @override
  @JsonKey(name: 'morn')
  double get morn;
  @override
  @JsonKey(ignore: true)
  _$$TempImplCopyWith<_$TempImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
