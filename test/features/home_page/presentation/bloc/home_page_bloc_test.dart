// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_app_flutter/core/error/failures.dart';
import 'package:weather_app_flutter/features/home_page/domain/usecase/get_city_by_name_usecase.dart';
import 'package:weather_app_flutter/features/home_page/domain/usecase/get_weather_data_usecase.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';

import 'dummyDto.dart';
import 'home_page_bloc_test.mocks.dart';

// // class MockGetWeatherDataUseCase extends Mock implements GetWeatherDataUseCase {}
// class MockGetCityByNameUseCase extends Mock implements GetCityByNameUseCase {}

@GenerateNiceMocks([
  MockSpec<GetWeatherDataUseCase>(),
  MockSpec<GetCityByNameUseCase>(),
])
void main() {
  late MockGetWeatherDataUseCase mockWeatherUseCase;
  late MockGetCityByNameUseCase mockCityByNameUseCase;

  setUp(() {
    mockWeatherUseCase = MockGetWeatherDataUseCase();
    mockCityByNameUseCase = MockGetCityByNameUseCase();
  });

  group('HomePageCubit', () {
    const lat = 52.0;
    const lon = 56.0;
    const units = 'metric';
    final weatherDto = DummyData.getDummyWeatherDto();

    blocTest(
      'emits states when getWeatherForLatLong is successful',
      build: () {
        // Setup the cubit with the mock use cases
        return HomePageCubit(mockWeatherUseCase, mockCityByNameUseCase);
      },
      act: (cubit) async {
        // Mock the successful response from the use case
        when(
          mockWeatherUseCase.getWeatherDataByLatLon(
            lat: anyNamed('lat'),
            lon: anyNamed('lon'),
            units: anyNamed('units'),
          ),
        ).thenAnswer((_) {
          return Future.value(Right(weatherDto));
        });

        // Call the method you want to test
        await cubit.getWeatherForLatLong(lat: 0.0, lon: 0.0, units: 'metric');
      },
      expect: () => [
        isA<Loaded>(),
      ],
    );

    blocTest(
      'emits states when getWeatherForLatLong is successful',
      build: () {
        // Setup the cubit with the mock use cases
        return HomePageCubit(mockWeatherUseCase, mockCityByNameUseCase);
      },
      act: (cubit) async {
        // Mock the successful response from the use case
        when(
          mockWeatherUseCase.getWeatherDataByLatLon(
            lat: anyNamed('lat'),
            lon: anyNamed('lon'),
            units: anyNamed('units'),
          ),
        ).thenAnswer((_) {
          return Future.value(Right(weatherDto));
        });

        // Call the method you want to test
        await cubit.getWeatherForPlace(
          'name',
          'secondary',
          lat.round().toString(),
          lon.round().toString(),
        );
      },
      expect: () => [
        HomePageState.loading(),
        isA<Loaded>(),
      ],
    );

    blocTest(
      'emits [Loading, Error] states when getWeatherForLatLong fails',
      build: () {
        // Setup the cubit with the mock use cases
        return HomePageCubit(mockWeatherUseCase, mockCityByNameUseCase);
      },
      act: (HomePageCubit cubit) async {
        // Mock the failure response from the use case
        when(
          mockWeatherUseCase.getWeatherDataByLatLon(
            lat: anyNamed('lat'),
            lon: anyNamed('lon'),
            units: anyNamed('units'),
          ),
        ).thenAnswer((_) async => Left(ServerFailure(message: 'Error')));

        // Call the method you want to test
        await cubit.getWeatherForLatLong(lat: 0.0, lon: 0.0, units: 'metric');
      },
      expect: () => [
        isA<HomePageError>(),
      ],
    );
  });
}
