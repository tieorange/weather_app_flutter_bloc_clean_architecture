import 'package:flutter/material.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';

class HomeBody extends StatefulWidget {
  const HomeBody(this._data, {super.key});

  final WeatherDto _data;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    final weather = widget._data.current;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${weather.temp.round()} °C'),
          Text('${weather.weather[0].main}'),
          Text('${weather.weather[0].description}'),
          Text('${weather.windSpeed} m/s'),
          Text('${weather.pressure} hPa'),
          Text('${weather.humidity}%'),
        ],
      ),
    );
  }
}
