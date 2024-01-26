// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app_flutter/core/util/extensions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';

class HourlyForecastView extends StatelessWidget {
  const HourlyForecastView({
    required this.data,
    super.key,
  });

  final WeatherDto data;

  @override
  Widget build(BuildContext context) {
    final hourly = data.hourly;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Hourly forecast',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        ListView.builder(
          itemCount: hourly.length,
          shrinkWrap: true,
          primary: false,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return _buildListItem(context, hourly[index]);
          },
        ),
      ],
    );
  }

  Widget _buildListItem(BuildContext context, CurrentWeather hourly) {
    final temperature = hourly.temp.round().toString();
    final temperatureFeelLike = hourly.feelsLike.round().toString();
    final iconAsset = hourly.weather[0].icon.getImageAsset();
    final weatherDescription = capitalizeFirstLetter(
      weatherDescriptionValues[hourly.weather[0].description] ?? 'cloudy',
    );
    final time = hourly.dt.formatTime();
    final windSpeed = hourly.windSpeed.round().toString();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            leading: Text(time),
            title: Text(
              '$temperature°C',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text(
              '$temperatureFeelLike°C - Feels like'
              '\nWind: $windSpeed m/s'
              '\n$weatherDescription',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            trailing: iconAsset.image(),
          ),
        ),
      ),
    );
  }
}

String capitalizeFirstLetter(String input) {
  if (input.isEmpty) {
    return input; // Return input as is if it's null or empty
  }

  return input[0].toUpperCase() + input.substring(1);
}
