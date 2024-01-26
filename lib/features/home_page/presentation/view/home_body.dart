// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app_flutter/core/util/extensions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';

class HomeBody extends StatefulWidget {
  const HomeBody(this._data, this._params, {super.key});

  final WeatherDto _data;
  final HomePageLoadedParams _params;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    final weather = widget._data.current;
    final hourly = widget._data.hourly;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              widget._params.placeNameMain,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(widget._params.placeNameSecondary ?? ''),
            weather.weather[0].icon.getImageAsset().image(
                  width: 100,
                  height: 100,
                ),
            Text(
              '${weather.temp.round()} °C',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 20),
            Text('Hourly: ${buildHourly(hourly)} °C'),
            Text('Feels like: ${weather.feelsLike.round()} °C'),
            Text('Weather: ${mainWeatherValues[weather.weather[0].main]}'),
            Text('Description: '
                '${weatherDescriptionValues[weather.weather[0].description]}'),
            Text('Icon: ${weather.weather[0].icon}'),
            Text('Wind speed: ${weather.windSpeed} m/s'),
            Text('Pressure: ${weather.pressure} hPa'),
            Text('Humidity: ${weather.humidity}%'),
            Text('Sunrise: ${weather.sunrise.formatTime()}'),
            Text('Sunset: ${weather.sunset.formatTime()}'),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  String buildHourly(List<CurrentWeather> hourly) {
    final list = hourly.map((e) {
      return '${e.dt.formatTime()} - '
          '${e.weather[0].icon} - '
          '${e.temp.round()} °C \n';
    }).toList();
    return list.toString();
  }
}
