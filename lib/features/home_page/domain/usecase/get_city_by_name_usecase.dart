import 'package:dartz/dartz.dart';
import 'package:weather_app_flutter/core/error/failures.dart';
import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/domain/repositories/home_page_repository.dart';

class GetCityByNameUseCase {
  GetCityByNameUseCase(this._weatherRepo);

  final WeatherRepository _weatherRepo;

  Future<Either<Failure, List<GeocodingDto>>> getCityByName({
    required String cityName,
  }) {
    return _weatherRepo.getCityByName(cityName: cityName);
  }
}
