// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_coding_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$GeoCodingApi extends GeoCodingApi {
  _$GeoCodingApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = GeoCodingApi;

  @override
  Future<Response<dynamic>> getCityByName({required String cityName}) {
    final Uri $url = Uri.parse(
        'geo/1.0/direct?q=${cityName}&appid=3880eab967f9c74b828319e49a7b74a2');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
