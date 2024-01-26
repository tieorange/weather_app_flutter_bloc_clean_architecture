// ignore_for_file: prefer_const_constructors

import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';

abstract class DummyData {
  static GeocodingDto getDummyGeocodingDto() {
    return GeocodingDto(
      name: 'Dummy City',
      lat: 40.7128,
      lon: -74.0060,
      country: 'Dummy Country',
      state: 'Dummy State',
    );
  }

  static WeatherDto getDummyWeatherDto() {
    return WeatherDto(
      lat: 0,
      lon: 0,
      timezone: 'UTC',
      timezoneOffset: 0,
      current: CurrentWeather(
        dt: 0,
        temp: 20,
        feelsLike: 22,
        pressure: 1012,
        humidity: 70,
        dewPoint: 15,
        uvi: 5,
        clouds: 20,
        windSpeed: 5,
        weather: [
          Weather(
            id: 800,
            main: WeatherType.CLEAR,
            description: Description.CLEAR_SKY,
            icon: WeatherIcon.THE_01_D,
          ),
        ],
      ),
      hourly: [],
      // Add mock data for hourly if needed
      daily: [
        Daily(
          dt: 0,
          sunrise: 0,
          sunset: 0,
          moonrise: 0,
          moonset: 0,
          moonPhase: 0.5,
          summary: 'Partly cloudy',
          temp: Temp(
            day: 25,
            min: 18,
            max: 28,
            night: 20,
            eve: 24,
            morn: 18,
          ),
          feelsLike: FeelsLike(
            day: 26,
            night: 21,
            eve: 25,
            morn: 19,
          ),
          pressure: 1015,
          humidity: 65,
          dewPoint: 17,
          windSpeed: 6,
          weather: [
            Weather(
              id: 801,
              main: WeatherType.CLOUDS,
              description: Description.FEW_CLOUDS,
              icon: WeatherIcon.THE_02_D,
            ),
          ],
          clouds: 30,
          pop: 0.2,
          rain: 2,
          snow: 1,
          uvi: 6,
        ),
      ],
    );
  }
}
