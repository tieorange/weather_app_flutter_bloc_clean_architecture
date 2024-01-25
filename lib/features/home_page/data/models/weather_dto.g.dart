// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WelcomeImpl _$$WelcomeImplFromJson(Map<String, dynamic> json) =>
    _$WelcomeImpl(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      timezone: json['timezone'] as String,
      timezoneOffset: json['timezone_offset'] as int,
      current: CurrentWeather.fromJson(json['current'] as Map<String, dynamic>),
      hourly: (json['hourly'] as List<dynamic>)
          .map((e) => CurrentWeather.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>)
          .map((e) => Daily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WelcomeImplToJson(_$WelcomeImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'current': instance.current,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };

_$CurrentImpl _$$CurrentImplFromJson(Map<String, dynamic> json) =>
    _$CurrentImpl(
      dt: json['dt'] as int,
      sunrise: json['sunrise'] as int?,
      sunset: json['sunset'] as int?,
      temp: (json['temp'] as num).toDouble(),
      feelsLike: (json['feels_like'] as num).toDouble(),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
      dewPoint: (json['dew_point'] as num).toDouble(),
      uvi: (json['uvi'] as num).toDouble(),
      clouds: json['clouds'] as int,
      visibility: json['visibility'] as int?,
      windSpeed: (json['wind_speed'] as num).toDouble(),
      windDeg: json['wind_deg'] as int,
      windGust: (json['wind_gust'] as num).toDouble(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      pop: (json['pop'] as num?)?.toDouble(),
      snow: json['snow'] == null
          ? null
          : Rain.fromJson(json['snow'] as Map<String, dynamic>),
      rain: json['rain'] == null
          ? null
          : Rain.fromJson(json['rain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentImplToJson(_$CurrentImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather,
      'pop': instance.pop,
      'snow': instance.snow,
      'rain': instance.rain,
    };

_$RainImpl _$$RainImplFromJson(Map<String, dynamic> json) => _$RainImpl(
      the1H: (json['1h'] as num).toDouble(),
    );

Map<String, dynamic> _$$RainImplToJson(_$RainImpl instance) =>
    <String, dynamic>{
      '1h': instance.the1H,
    };

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      id: json['id'] as int,
      main: $enumDecode(_$WeatherTypeEnumMap, json['main']),
      description: $enumDecode(_$DescriptionEnumMap, json['description']),
      icon: $enumDecode(_$WeatherIconEnumMap, json['icon']),
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': _$WeatherTypeEnumMap[instance.main]!,
      'description': _$DescriptionEnumMap[instance.description]!,
      'icon': _$WeatherIconEnumMap[instance.icon]!,
    };

const _$WeatherTypeEnumMap = {
  WeatherType.CLEAR: 'Clear',
  WeatherType.CLOUDS: 'Clouds',
  WeatherType.RAIN: 'Rain',
  WeatherType.SNOW: 'Snow',
};

const _$DescriptionEnumMap = {
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

const _$WeatherIconEnumMap = {
  WeatherIcon.THE_01_D: '01d',
  WeatherIcon.THE_01_N: '01n',
  WeatherIcon.THE_02_D: '02d',
  WeatherIcon.THE_02_N: '02n',
  WeatherIcon.THE_03_D: '03d',
  WeatherIcon.THE_03_N: '03n',
  WeatherIcon.THE_04_D: '04d',
  WeatherIcon.THE_04_N: '04n',
  WeatherIcon.THE_09_D: '09d',
  WeatherIcon.THE_09_N: '09n',
  WeatherIcon.THE_10_D: '10d',
  WeatherIcon.THE_10_N: '10n',
  WeatherIcon.THE_11_D: '11d',
  WeatherIcon.THE_11_N: '11n',
  WeatherIcon.THE_13_D: '13d',
  WeatherIcon.THE_13_N: '13n',
  WeatherIcon.THE_50_D: '50d',
  WeatherIcon.THE_50_N: '50n',
};

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      dt: json['dt'] as int,
      sunrise: json['sunrise'] as int,
      sunset: json['sunset'] as int,
      moonrise: json['moonrise'] as int,
      moonset: json['moonset'] as int,
      moonPhase: (json['moon_phase'] as num).toDouble(),
      summary: json['summary'] as String,
      temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
      feelsLike: FeelsLike.fromJson(json['feels_like'] as Map<String, dynamic>),
      pressure: json['pressure'] as int,
      humidity: json['humidity'] as int,
      dewPoint: (json['dew_point'] as num).toDouble(),
      windSpeed: (json['wind_speed'] as num).toDouble(),
      windDeg: json['wind_deg'] as int,
      windGust: (json['wind_gust'] as num).toDouble(),
      weather: (json['weather'] as List<dynamic>)
          .map((e) => Weather.fromJson(e as Map<String, dynamic>))
          .toList(),
      clouds: json['clouds'] as int,
      pop: (json['pop'] as num).toDouble(),
      rain: (json['rain'] as num?)?.toDouble(),
      snow: (json['snow'] as num?)?.toDouble(),
      uvi: (json['uvi'] as num).toDouble(),
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'summary': instance.summary,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
      'snow': instance.snow,
      'uvi': instance.uvi,
    };

_$FeelsLikeImpl _$$FeelsLikeImplFromJson(Map<String, dynamic> json) =>
    _$FeelsLikeImpl(
      day: (json['day'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
      eve: (json['eve'] as num).toDouble(),
      morn: (json['morn'] as num).toDouble(),
    );

Map<String, dynamic> _$$FeelsLikeImplToJson(_$FeelsLikeImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

_$TempImpl _$$TempImplFromJson(Map<String, dynamic> json) => _$TempImpl(
      day: (json['day'] as num).toDouble(),
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      night: (json['night'] as num).toDouble(),
      eve: (json['eve'] as num).toDouble(),
      morn: (json['morn'] as num).toDouble(),
    );

Map<String, dynamic> _$$TempImplToJson(_$TempImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
