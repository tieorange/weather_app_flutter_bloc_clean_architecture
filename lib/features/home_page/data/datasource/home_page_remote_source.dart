import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:weather_app_flutter/core/api/api_provider.dart';
import 'package:weather_app_flutter/core/error/exceptions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';

abstract class WeatherRemoteSource {
  Future<WeatherDto> getWeatherData({
    required double lat,
    required double lon,
    required String units,
  });

  Future<List<GeocodingDto>> getCityByName({required String cityName});
}

class WeatherRemoteSourceImpl implements WeatherRemoteSource {
  @override
  Future<WeatherDto> getWeatherData({
    required double lat,
    required double lon,
    required String units,
  }) async {
    ApiProvider.create();
    final response = await ApiProvider.weatherApi.getWeatherData(
      lat: 50.6189703,
      lon: 26.2496316,
      units: 'metric',
    );

    if (response.isSuccessful) {
      if (response.body == null) {
        throw const ServerException(message: 'Data from serve is empty');
      } else {
        return _parseWeatherJson(response);
      }
    } else {
      throw const ServerException(message: 'Error while fetching data');
    }
  }

  WeatherDto _parseWeatherJson(Response<dynamic> response) {
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

    if (response.isSuccessful) {
      if (response.body == null) {
        throw const ServerException(message: 'Data from serve is empty');
      } else {
        return _parseGeocodingJson(response);
      }
    } else {
      throw const ServerException(message: 'Error while fetching data');
    }
  }

  List<GeocodingDto> _parseGeocodingJson(Response<dynamic> response) {
    final jsonAsList = json.decode(response.bodyString) as List;
    final responseDto = jsonAsList.map(processGeoCoding).toList();

    print(responseDto);

    return responseDto;
  }

  GeocodingDto processGeoCoding(i) =>
      GeocodingDto.fromJson(i as Map<String, dynamic>);
}
