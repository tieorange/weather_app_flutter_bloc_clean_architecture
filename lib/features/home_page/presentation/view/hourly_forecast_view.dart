import 'package:flutter/material.dart';
import 'package:weather_app_flutter/core/util/extensions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';

class HourlyForecastView extends StatelessWidget {
  const HourlyForecastView({
    super.key,
    required this.data,
  });

  final WeatherDto data;

  @override
  Widget build(BuildContext context) {
    final hourly = data.hourly;
    return ListView.builder(
      itemCount: hourly.length,
      shrinkWrap: true,
      primary: false,
        physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return _buildListItem(hourly[index]);
      },
    );
  }

  Widget _buildListItem(CurrentWeather hourly) {
    final temperature = hourly.temp.round().toString();
    final iconAsset = hourly.weather[0].icon.getImageAsset();
    final time = hourly.dt.formatTime();

    return ListTile(
      title: Text(temperature),
      subtitle: Text(time),
      leading: iconAsset.image(),
    );
  }
}
