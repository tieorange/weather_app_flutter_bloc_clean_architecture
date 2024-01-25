import 'package:dartz/dartz.dart';
import 'package:weather_app_flutter/core/error/failures.dart';
import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherDto>> getWeatherData({
    required double lat,
    required double lon,
    required String units,
  });

  Future<Either<Failure, List<GeocodingDto>>> getCityByName({
    required String cityName,
  });
}
