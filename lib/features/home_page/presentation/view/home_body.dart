// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:weather_app_flutter/core/util/extensions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/hourly_forecast_view.dart';

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
    return Animate(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // City:
              Column(
                children: [
                  Text(
                    widget._params.placeNameMain,
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(widget._params.placeNameSecondary ?? ''),
                  weather.weather[0].icon.getImageAsset().image(
                        width: 100,
                        height: 100,
                      ),

                  // Temperature:
                  Text(
                    '${weather.temp.round()} °C',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ).animate().scale(delay: 200.ms),
              const SizedBox(height: 20),

              // Today:
              Text('Feels like: ${weather.feelsLike.round()} °C'),
              Text('Weather: ${mainWeatherValues[weather.weather[0].main]}'),
              Text('Description: '
                  '${weatherDescriptionValues[weather.weather[0].description]}'),
              Text('Wind speed: ${weather.windSpeed} m/s'),
              Text('Pressure: ${weather.pressure} hPa'),
              Text('Humidity: ${weather.humidity}%'),
              Text('Sunrise: ${weather.sunrise.formatTime()}'),
              Text('Sunset: ${weather.sunset.formatTime()}'),
              const SizedBox(height: 20),

              // Hourly:
              HourlyForecastView(data: widget._data).animate().fade(
                    delay: 600.ms,
                  ).slideX(),
              SizedBox(height: 76),
            ],
          ),
        ),
      ).animate().fade(duration: 500.ms).slideY(),
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
