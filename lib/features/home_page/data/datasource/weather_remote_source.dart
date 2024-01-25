import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:weather_app_flutter/core/error/exceptions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/service/geo_coding_api_service.dart';
import 'package:weather_app_flutter/features/home_page/data/service/weather_api_service.dart';

abstract class WeatherRemoteSource {
  Future<WeatherDto> getWeatherData({
    required double lat,
    required double lon,
    required String units,
  });

  Future<List<GeocodingDto>> getCityByName({required String cityName});
}

class WeatherRemoteSourceImpl implements WeatherRemoteSource {
  WeatherRemoteSourceImpl(this._weatherApi, this._geoCodingApi);

  final OpenWeatherApi _weatherApi;
  final GeoCodingApi _geoCodingApi;

  @override
  Future<WeatherDto> getWeatherData({
    required double lat,
    required double lon,
    required String units,
  }) async {
    final response = await _weatherApi.getWeatherData(
      lat: 50.6189703,
      lon: 26.2496316,
      units: units,
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
    final response = await _geoCodingApi.getCityByName(cityName: cityName);

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
