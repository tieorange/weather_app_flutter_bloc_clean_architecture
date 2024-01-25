import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app_flutter/core/error/failures.dart';
import 'package:weather_app_flutter/core/util/gps_location/gps_location.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/domain/usecase/get_city_by_name_usecase.dart';
import 'package:weather_app_flutter/features/home_page/domain/usecase/get_weather_data_usecase.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit(this._weatherUseCase, this._cityByNameUseCase)
      : super(const HomePageState.initial());
  final GetWeatherDataUseCase _weatherUseCase;
  final GetCityByNameUseCase _cityByNameUseCase;

  Future<void> getWeatherForLatLong({
    required double lat,
    required double lon,
    required String units,
    String? placeNameMain,
    String? placeNameSecondary,
  }) async {
    final result = await _weatherUseCase.getWeatherDataByLatLon(
      lat: lat,
      lon: lon,
      units: units,
    );

    result.fold(
      (failure) {
        emit(HomePageState.error(failure));
      },
      (weather) {
        final params = HomePageLoadedParams(
          placeNameMain: placeNameMain ?? 'Current location',
          placeNameSecondary: placeNameSecondary,
        );
        emit(
          HomePageState.loaded(weather, params, units),
        );
      },
    );
  }

  Future<void> getWeatherForCurrentLocation() async {
    emit(const HomePageState.loading());

    // Default - Next50 office in Abu Dhabi
    var lat = 24.4496225;
    var lon = 54.6028548;

    try {
      final currentLocation = await GpsLocationService.getLocationData();
      lat = currentLocation.latitude;
      lon = currentLocation.longitude;
    } catch (e) {
      final error = e.toString();
      emit(HomePageState.error(GPSFailure(message: error)));
    }

    await getWeatherForLatLong(lat: lat, lon: lon, units: 'metric');
  }

  Future<void> getWeatherForPlace(
    String placeNameMain,
    String? placeNameSecondary,
    String? lat,
    String? lng,
  ) async {
    emit(const HomePageState.loading());

    double latFinal;
    double lngFinal;

    if (lat == null) {
      latFinal = 24.4496225;
    } else {
      latFinal = double.parse(lat);
    }
    if (lng == null) {
      lngFinal = 54.6028548;
    } else {
      lngFinal = double.parse(lng);
    }

    await getWeatherForLatLong(
      lat: latFinal,
      lon: lngFinal,
      units: 'metric',
      placeNameMain: placeNameMain,
      placeNameSecondary: placeNameSecondary,
    );
  }
}
