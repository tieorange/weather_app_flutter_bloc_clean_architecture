import 'dart:convert';

import 'package:weather_app_flutter/core/api/api_provider.dart';
import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';

abstract class HomePageRemoteSource {
  Future<WeatherDto> getWeatherData();

  Future<List<GeocodingDto>> getCityByName({required String cityName});
}

class HomePageRemoteSourceImpl implements HomePageRemoteSource {
  @override
  Future<WeatherDto> getWeatherData() async {
    ApiProvider.create();
    final response = await ApiProvider.weatherApi.getWeatherData(
      lat: 50.6189703,
      lon: 26.2496316,
      units: 'metric',
    );

    final decoded = json.decode(response.bodyString) as Map<String, dynamic>;

    final responseDto = WeatherDto.fromJson(decoded);
    print(responseDto);

    return responseDto;
  }

  @override
  Future<List<GeocodingDto>> getCityByName({required String cityName}) async {
    ApiProvider.create();
    final response =
        await ApiProvider.geoCodingApi.getCityByName(cityName: cityName);

    final jsonAsList = json.decode(response.bodyString) as List;
    final responseDto = jsonAsList.map(processGeoCoding).toList();

    print(responseDto);

    return responseDto;
  }

  GeocodingDto processGeoCoding(i) =>
      GeocodingDto.fromJson(i as Map<String, dynamic>);
}
