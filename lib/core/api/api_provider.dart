import 'dart:io';

import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:weather_app_flutter/core/constants/app_constants.dart';
import 'package:weather_app_flutter/features/home_page/data/service/geo_coding_api_service.dart';
import 'package:weather_app_flutter/features/home_page/data/service/weather_api_service.dart';

abstract class ApiProvider {
  static late ChopperClient _client;
  static late OpenWeatherApi weatherApi;
  static late GeoCodingApi geoCodingApi;

  static void create() {
    _client = ChopperClient(
      baseUrl: Uri.parse(AppConstants.apiURL),
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 15),
      ),
      services: [
        OpenWeatherApi.create(),
        GeoCodingApi.create(),
      ],
      // interceptors: getInterceptors(),
    );

    weatherApi = _client.getService<OpenWeatherApi>();
    geoCodingApi = _client.getService<GeoCodingApi>();
  }

  static void dispose() {
    _client.dispose();
  }
}
