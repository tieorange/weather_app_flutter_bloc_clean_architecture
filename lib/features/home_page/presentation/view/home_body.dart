// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app_flutter/core/util/date_time_converter.dart';
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
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(widget._params.placeNameMain),
            Text('${widget._params.placeNameSecondary}'),
            const SizedBox(height: 20),
            Text('Temperature: ${weather.temp.round()} °C'),
            Text('Feels like: ${weather.feelsLike.round()} °C'),
            Text('Weather: ${weather.weather[0].main}'),
            Text('Description: ${weather.weather[0].description}'),
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
}
