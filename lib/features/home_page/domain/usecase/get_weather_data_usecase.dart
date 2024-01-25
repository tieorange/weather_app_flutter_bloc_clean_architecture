import 'package:dartz/dartz.dart';
import 'package:weather_app_flutter/core/error/failures.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/domain/repositories/home_page_repository.dart';

class GetWeatherDataUseCase {
  GetWeatherDataUseCase(this._weatherRepo);

  final WeatherRepository _weatherRepo;

  Future<Either<Failure, WeatherDto>> getWeatherDataByLatLon({
    required double lat,
    required double lon,
    required String units,
  }) {
    return _weatherRepo.getWeatherData(
      lat: lat,
      lon: lon,
      units: units,
    );
  }
}
