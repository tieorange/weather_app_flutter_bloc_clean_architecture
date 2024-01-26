// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app_flutter/core/generated/assets.gen.dart';
import 'package:weather_app_flutter/core/util/extensions.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/hourly_forecast_view.dart';

class WeatherDetailsPage extends StatefulWidget {
  const WeatherDetailsPage({super.key});

  @override
  State<WeatherDetailsPage> createState() => _WeatherDetailsPageState();
}

class _WeatherDetailsPageState extends State<WeatherDetailsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.read<HomePageCubit>().state;
    if (state is! Loaded) {
      return const Center(child: CircularProgressIndicator());
    }
    final data = mapStateToData(state);

    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: Text(state.params.placeNameMain),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return _buildListItem(item, context);
        },
      ),
    );
  }

  Widget _buildListItem(WeatherDetailsObject item, BuildContext context) {
    return Animate(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Card(
          color: Colors.teal[100],
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: ListTile(
              title: Text.rich(
                TextSpan(
                  children: [
                    WidgetSpan(
                      child: FaIcon(FontAwesomeIcons.calendarDay),
                    ),
                    TextSpan(
                      text: ' ${item.date} \n\n',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    WidgetSpan(
                      child: FaIcon(FontAwesomeIcons.temperatureHalf),
                    ),
                    TextSpan(
                      text: ' Min: ${item.tempMin}°C Max: ${item.tempMax}°C',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              subtitle: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '${item.feelsLike}°C - Feels like\n\n',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    WidgetSpan(
                      child: FaIcon(FontAwesomeIcons.wind),
                    ),
                    TextSpan(
                      text: ' Wind: ${item.windSpeed} m/s'
                          '\n${item.weatherDescription} \n\n',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: FaIcon(FontAwesomeIcons.sun),
                    ),
                    TextSpan(
                      text: '  Sunrise: ${item.sunrise}\n',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(text: '\n'),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: FaIcon(FontAwesomeIcons.moon),
                    ),
                    TextSpan(
                      text: '   Sunset: ${item.sunset}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              trailing: item.icon.image(),
            ),
          ),
        ),
      ).animate().fade(delay: 20.ms).then().slideX().then().shimmer(),
    );
  }

  List<WeatherDetailsObject> mapStateToData(Loaded state) {
    // date, temp, feelsLike, icon, wind, weatherDescription, sunset, sunrise
    final weatherList = state.result.daily.map(
      (e) {
        final weather = WeatherDetailsObject(
          date: e.dt.formatDate(),
          tempMin: e.temp.min.round().toString(),
          tempMax: e.temp.max.round().toString(),
          feelsLike: e.feelsLike.day.round().toString(),
          icon: e.weather[0].icon.getImageAsset(),
          windSpeed: e.windSpeed.round().toString(),
          weatherDescription: capitalizeFirstLetter(
            weatherDescriptionValues[e.weather[0].description] ?? 'Cloudy',
          ),
          sunset: e.sunset.formatTime(),
          sunrise: e.sunrise.formatTime(),
        );
        return weather;
      },
    ).toList();
    return weatherList;
  }
}

@immutable
class WeatherDetailsObject {
  final String date;
  final String tempMax;
  final String tempMin;
  final String feelsLike;
  final String sunset;
  final String sunrise;
  final AssetGenImage icon;
  final String windSpeed;
  final String weatherDescription;

//<editor-fold desc="Data Methods">

  const WeatherDetailsObject({
    required this.date,
    required this.tempMax,
    required this.tempMin,
    required this.feelsLike,
    required this.sunset,
    required this.sunrise,
    required this.icon,
    required this.windSpeed,
    required this.weatherDescription,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is WeatherDetailsObject &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          tempMax == other.tempMax &&
          tempMin == other.tempMin &&
          feelsLike == other.feelsLike &&
          sunset == other.sunset &&
          sunrise == other.sunrise &&
          icon == other.icon &&
          windSpeed == other.windSpeed &&
          weatherDescription == other.weatherDescription);

  @override
  int get hashCode =>
      date.hashCode ^
      tempMax.hashCode ^
      tempMin.hashCode ^
      feelsLike.hashCode ^
      sunset.hashCode ^
      sunrise.hashCode ^
      icon.hashCode ^
      windSpeed.hashCode ^
      weatherDescription.hashCode;

  @override
  String toString() {
    return 'WeatherDetailsObject{ date: $date,'
        ' tempMax: $tempMax, tempMin: $tempMin,'
        ' feelsLike: $feelsLike, sunset: $sunset, sunrise: $sunrise,'
        ' icon: $icon, windSpeed: $windSpeed,'
        ' weatherDescription: $weatherDescription,}';
  }

  WeatherDetailsObject copyWith({
    String? date,
    String? tempMax,
    String? tempMin,
    String? feelsLike,
    String? sunset,
    String? sunrise,
    AssetGenImage? icon,
    String? windSpeed,
    String? weatherDescription,
  }) {
    return WeatherDetailsObject(
      date: date ?? this.date,
      tempMax: tempMax ?? this.tempMax,
      tempMin: tempMin ?? this.tempMin,
      feelsLike: feelsLike ?? this.feelsLike,
      sunset: sunset ?? this.sunset,
      sunrise: sunrise ?? this.sunrise,
      icon: icon ?? this.icon,
      windSpeed: windSpeed ?? this.windSpeed,
      weatherDescription: weatherDescription ?? this.weatherDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': this.date,
      'tempMax': this.tempMax,
      'tempMin': this.tempMin,
      'feelsLike': this.feelsLike,
      'sunset': this.sunset,
      'sunrise': this.sunrise,
      'icon': this.icon,
      'windSpeed': this.windSpeed,
      'weatherDescription': this.weatherDescription,
    };
  }

  factory WeatherDetailsObject.fromMap(Map<String, dynamic> map) {
    return WeatherDetailsObject(
      date: map['date'] as String,
      tempMax: map['tempMax'] as String,
      tempMin: map['tempMin'] as String,
      feelsLike: map['feelsLike'] as String,
      sunset: map['sunset'] as String,
      sunrise: map['sunrise'] as String,
      icon: map['icon'] as AssetGenImage,
      windSpeed: map['windSpeed'] as String,
      weatherDescription: map['weatherDescription'] as String,
    );
  }

//</editor-fold>
}

String printObject(Object object) {
  // Encode your object and then decode your object to Map variable
  final dynamic jsonMapped = json.decode(json.encode(object));

  // Using JsonEncoder for spacing
  final encoder = JsonEncoder.withIndent('  ');

  // encode it to string
  final prettyPrint = encoder.convert(jsonMapped);

  // print or debugPrint your object
  debugPrint(prettyPrint);
  return prettyPrint;
}
