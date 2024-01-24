import 'package:flutter/material.dart';
import 'package:weather_app_flutter/core/util/gps_location/gps_location.dart';
import 'package:weather_app_flutter/features/app/app.dart';
import 'package:weather_app_flutter/features/app/bootstrap.dart';
import 'package:weather_app_flutter/features/home_page/data/datasource/home_page_remote_source.dart';

void main() {
  bootstrap(() => const App());

  // HomePageRemoteSourceImpl().getWeatherData();
  // HomePageRemoteSourceImpl().getCityByName(cityName: 'Rivne');
}
