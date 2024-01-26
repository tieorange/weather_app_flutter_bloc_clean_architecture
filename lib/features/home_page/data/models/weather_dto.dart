// ignore_for_file: constant_identifier_names, invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_flutter/core/generated/assets.gen.dart';

part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    @JsonKey(name: 'lat') required double lat,
    @JsonKey(name: 'lon') required double lon,
    @JsonKey(name: 'timezone') required String timezone,
    @JsonKey(name: 'timezone_offset') required int timezoneOffset,
    @JsonKey(name: 'current') required CurrentWeather current,
    @JsonKey(name: 'hourly') required List<CurrentWeather> hourly,
    @JsonKey(name: 'daily') required List<Daily> daily,
  }) = _Welcome;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

@freezed
class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    @JsonKey(name: 'dt') required int dt,
    @JsonKey(name: 'sunrise') int? sunrise,
    @JsonKey(name: 'sunset') int? sunset,
    @JsonKey(name: 'temp') required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    @JsonKey(name: 'pressure') required int pressure,
    @JsonKey(name: 'humidity') required int humidity,
    @JsonKey(name: 'dew_point') required double dewPoint,
    @JsonKey(name: 'uvi') required double uvi,
    @JsonKey(name: 'clouds') required int clouds,
    @JsonKey(name: 'visibility') int? visibility,
    @JsonKey(name: 'wind_speed') required double windSpeed,
    @JsonKey(name: 'wind_deg') required int windDeg,
    @JsonKey(name: 'wind_gust') required double windGust,
    @JsonKey(name: 'weather') required List<Weather> weather,
    @JsonKey(name: 'pop') double? pop,
    @JsonKey(name: 'snow') Rain? snow,
    @JsonKey(name: 'rain') Rain? rain,
  }) = _Current;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}

@freezed
class Rain with _$Rain {
  const factory Rain({
    @JsonKey(name: '1h') required double the1H,
  }) = _Rain;

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);
}

@freezed
class Weather with _$Weather {
  const factory Weather({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'main') required WeatherType main,
    @JsonKey(name: 'description') required Description description,
    @JsonKey(name: 'icon') required WeatherIcon icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

enum Description {
  @JsonValue('clear sky')
  CLEAR_SKY,
  @JsonValue('light rain')
  LIGHT_RAIN,
  @JsonValue('light snow')
  LIGHT_SNOW,
  @JsonValue('overcast clouds')
  OVERCAST_CLOUDS,
  @JsonValue('rain and snow')
  RAIN_AND_SNOW,
  @JsonValue('snow')
  SNOW,
  @JsonValue('broken clouds')
  BROKEN_CLOUDS,
  @JsonValue('few clouds')
  FEW_CLOUDS,
  @JsonValue('scattered clouds')
  SCATTERED_CLOUDS,
  @JsonValue('shower rain')
  SHOWER_RAIN,
  @JsonValue('rain')
  RAIN,
  @JsonValue('thunderstorm')
  THUNDERSTORM,
  @JsonValue('mist')
  MIST,
}

final weatherDescriptionValues = {
  Description.CLEAR_SKY: 'clear sky',
  Description.LIGHT_RAIN: 'light rain',
  Description.LIGHT_SNOW: 'light snow',
  Description.OVERCAST_CLOUDS: 'overcast clouds',
  Description.RAIN_AND_SNOW: 'rain and snow',
  Description.SNOW: 'snow',
  Description.BROKEN_CLOUDS: 'broken clouds',
  Description.FEW_CLOUDS: 'few clouds',
  Description.SCATTERED_CLOUDS: 'scattered clouds',
  Description.SHOWER_RAIN: 'shower rain',
  Description.RAIN: 'rain',
  Description.THUNDERSTORM: 'thunderstorm',
  Description.MIST: 'mist',
};

enum WeatherIcon {
  @JsonValue('01d')
  THE_01_D(),
  @JsonValue('01n')
  THE_01_N,
  @JsonValue('02d')
  THE_02_D,
  @JsonValue('02n')
  THE_02_N,
  @JsonValue('03d')
  THE_03_D,
  @JsonValue('03n')
  THE_03_N,
  @JsonValue('04d')
  THE_04_D,
  @JsonValue('04n')
  THE_04_N,
  @JsonValue('09d')
  THE_09_D,
  @JsonValue('09n')
  THE_09_N,
  @JsonValue('10d')
  THE_10_D,
  @JsonValue('10n')
  THE_10_N,
  @JsonValue('11d')
  THE_11_D,
  @JsonValue('11n')
  THE_11_N,
  @JsonValue('13d')
  THE_13_D,
  @JsonValue('13n')
  THE_13_N,
  @JsonValue('50d')
  THE_50_D,
  @JsonValue('50n')
  THE_50_N
}

extension IntDateConversion on WeatherIcon {
  AssetGenImage getImageAsset() {
    switch (this) {
      case WeatherIcon.THE_01_D:
        return Assets.images.q01d;
      case WeatherIcon.THE_01_N:
        return Assets.images.q01n;
      case WeatherIcon.THE_02_D:
        return Assets.images.q02d;
      case WeatherIcon.THE_02_N:
        return Assets.images.q02n;
      case WeatherIcon.THE_03_D:
        return Assets.images.q03d;
      case WeatherIcon.THE_03_N:
        return Assets.images.q03n;
      case WeatherIcon.THE_04_D:
        return Assets.images.q04d;
      case WeatherIcon.THE_04_N:
        return Assets.images.q04n;
      case WeatherIcon.THE_09_D:
        return Assets.images.q09d;
      case WeatherIcon.THE_09_N:
        return Assets.images.q09n;
      case WeatherIcon.THE_10_D:
        return Assets.images.q10d;
      case WeatherIcon.THE_10_N:
        return Assets.images.q10n;
      case WeatherIcon.THE_11_D:
        return Assets.images.q11d;
      case WeatherIcon.THE_11_N:
        return Assets.images.q11n;
      case WeatherIcon.THE_13_D:
        return Assets.images.q13d;
      case WeatherIcon.THE_13_N:
        return Assets.images.q13n;
      case WeatherIcon.THE_50_D:
        return Assets.images.q50d;
      case WeatherIcon.THE_50_N:
        return Assets.images.q50n;
    }
  }
}

final iconValues = EnumValues({
  '01d': WeatherIcon.THE_01_D,
  '01n': WeatherIcon.THE_01_N,
  '02d': WeatherIcon.THE_02_D,
  '02n': WeatherIcon.THE_02_N,
  '03d': WeatherIcon.THE_03_D,
  '03n': WeatherIcon.THE_03_N,
  '04d': WeatherIcon.THE_04_D,
  '04n': WeatherIcon.THE_04_N,
  '09d': WeatherIcon.THE_09_D,
  '09n': WeatherIcon.THE_09_N,
  '10d': WeatherIcon.THE_10_D,
  '10n': WeatherIcon.THE_10_N,
  '11d': WeatherIcon.THE_11_D,
  '11n': WeatherIcon.THE_11_N,
  '13d': WeatherIcon.THE_13_D,
  '13n': WeatherIcon.THE_13_N,
  '50d': WeatherIcon.THE_50_D,
  '50n': WeatherIcon.THE_50_N,
});

enum WeatherType {
  @JsonValue('Clear')
  CLEAR,
  @JsonValue('Clouds')
  CLOUDS,
  @JsonValue('Rain')
  RAIN,
  @JsonValue('Snow')
  SNOW
}

final mainWeatherValues = {
  WeatherType.CLEAR: 'Clear',
  WeatherType.CLOUDS: 'Clouds',
  WeatherType.RAIN: 'Rain',
  WeatherType.SNOW: 'Snow',
};

@freezed
class Daily with _$Daily {
  const factory Daily({
    @JsonKey(name: 'dt') required int dt,
    @JsonKey(name: 'sunrise') required int sunrise,
    @JsonKey(name: 'sunset') required int sunset,
    @JsonKey(name: 'moonrise') required int moonrise,
    @JsonKey(name: 'moonset') required int moonset,
    @JsonKey(name: 'moon_phase') required double moonPhase,
    @JsonKey(name: 'summary') required String summary,
    @JsonKey(name: 'temp') required Temp temp,
    @JsonKey(name: 'feels_like') required FeelsLike feelsLike,
    @JsonKey(name: 'pressure') required int pressure,
    @JsonKey(name: 'humidity') required int humidity,
    @JsonKey(name: 'dew_point') required double dewPoint,
    @JsonKey(name: 'wind_speed') required double windSpeed,
    @JsonKey(name: 'wind_deg') required int windDeg,
    @JsonKey(name: 'wind_gust') required double windGust,
    @JsonKey(name: 'weather') required List<Weather> weather,
    @JsonKey(name: 'clouds') required int clouds,
    @JsonKey(name: 'pop') required double pop,
    @JsonKey(name: 'rain') double? rain,
    @JsonKey(name: 'snow') double? snow,
    @JsonKey(name: 'uvi') required double uvi,
  }) = _Daily;

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);
}

@freezed
class FeelsLike with _$FeelsLike {
  const factory FeelsLike({
    @JsonKey(name: 'day') required double day,
    @JsonKey(name: 'night') required double night,
    @JsonKey(name: 'eve') required double eve,
    @JsonKey(name: 'morn') required double morn,
  }) = _FeelsLike;

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);
}

@freezed
class Temp with _$Temp {
  const factory Temp({
    @JsonKey(name: 'day') required double day,
    @JsonKey(name: 'min') required double min,
    @JsonKey(name: 'max') required double max,
    @JsonKey(name: 'night') required double night,
    @JsonKey(name: 'eve') required double eve,
    @JsonKey(name: 'morn') required double morn,
  }) = _Temp;

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
