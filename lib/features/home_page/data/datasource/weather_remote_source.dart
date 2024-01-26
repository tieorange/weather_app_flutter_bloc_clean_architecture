import 'dart:convert';
import 'dart:developer';

import 'package:chopper/chopper.dart';
import 'package:weather_app_flutter/core/error/exceptions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/service/geo_coding_api_service.dart';
import 'package:weather_app_flutter/features/home_page/data/service/weather_api_service.dart';

abstract class WeatherRemoteSource {
  Future<WeatherDto?> getWeatherData({
    required double lat,
    required double lng,
    required String units,
  });

  Future<List<GeocodingDto>> getCityByName({required String cityName});
}

class WeatherRemoteSourceImpl implements WeatherRemoteSource {
  WeatherRemoteSourceImpl(this._weatherApi, this._geoCodingApi);

  final OpenWeatherApi _weatherApi;
  final GeoCodingApi _geoCodingApi;

  @override
  Future<WeatherDto?> getWeatherData({
    required double lat,
    required double lng,
    required String units,
  }) async {
    final response = await _weatherApi.getWeatherData(
      lat: lat,
      lng: lng,
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

  WeatherDto? _parseWeatherJson(Response<dynamic> response) {
    try {
      final decoded = json.decode(response.bodyString) as Map<String, dynamic>;

      final responseDto = WeatherDto.fromJson(decoded);

      return responseDto;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
    return null;
  }

  @override
  Future<List<GeocodingDto>> getCityByName({required String cityName}) async {
    final response = await _geoCodingApi.getCityByName(cityName: cityName);

    if (response.isSuccessful) {
      if (response.body == null) {
        throw const ServerException(message: 'Data from serve is empty');
      } else {
        return _parseGeocodingJson(response) ?? [];
      }
    } else {
      throw const ServerException(message: 'Error while fetching data');
    }
  }

  List<GeocodingDto>? _parseGeocodingJson(Response<dynamic> response) {
    try {
      final jsonAsList = json.decode(response.bodyString) as List;
      final responseDto = jsonAsList.map(processGeoCoding).toList();

      return responseDto;
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  GeocodingDto processGeoCoding(dynamic i) =>
      GeocodingDto.fromJson(i as Map<String, dynamic>);
}
