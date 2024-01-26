import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app_flutter/core/util/network_availability_tools/network_info.dart';
import 'package:weather_app_flutter/features/home_page/data/datasource/weather_remote_source.dart';
import 'package:weather_app_flutter/features/home_page/data/repositories/home_page_repository_impl.dart';

import '../../presentation/bloc/dummyDto.dart';
import 'home_page_repository_impl_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<WeatherRemoteSource>(),
  MockSpec<NetworkInfo>(),
])
void main() {
  late MockWeatherRemoteSource mockWeatherRemoteSource;
  late MockNetworkInfo mockNetworkInfo;
  late WeatherRepositoryImpl repository;

  setUp(() {
    mockWeatherRemoteSource = MockWeatherRemoteSource();
    mockNetworkInfo = MockNetworkInfo();
    repository =
        WeatherRepositoryImpl(mockWeatherRemoteSource, mockNetworkInfo);
  });

  group('getWeatherData', () {
    const testLat = 0.0;
    const testLng = 0.0;
    const testUnits = 'metric';
    final weatherDto = DummyData.getDummyWeatherDto();

    test('should check if the device is online', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      // act
      await repository.getWeatherData(
          lat: testLat, lon: testLng, units: testUnits);

      // assert
      verify(mockNetworkInfo.isConnected);
    });

    test(
        'should return WeatherDto when the call'
        ' to remote data source is successful', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(
        mockWeatherRemoteSource.getWeatherData(
          lat: anyNamed('lat'),
          lng: anyNamed('lng'),
          units: anyNamed('units'),
        ),
      ).thenAnswer((_) async => weatherDto);

      // act
      final result = await repository.getWeatherData(
        lat: testLat,
        lon: testLng,
        units: testUnits,
      );

      // assert
      expect(result, equals(Right(weatherDto)));
    });
  });

  group('getCityByName', () {
    const testCityName = 'London';

    test('should check if the device is online', () async {
      // arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      // act
      await repository.getCityByName(cityName: testCityName);

      // assert
      verify(mockNetworkInfo.isConnected);
    });
  });
}
