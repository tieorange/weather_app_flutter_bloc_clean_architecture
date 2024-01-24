// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$OpenWeatherApi extends OpenWeatherApi {
  _$OpenWeatherApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = OpenWeatherApi;

  @override
  Future<Response<dynamic>> getWeatherData({
    required double lat,
    required double lon,
    required String units,
  }) {
    final Uri $url = Uri.parse(
        'data/3.0/onecall?lat=${lat}&lon=${lon}&exclude=alerts,minutely&appid=3880eab967f9c74b828319e49a7b74a2&units=${units}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
