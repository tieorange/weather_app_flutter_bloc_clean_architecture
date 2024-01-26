import 'package:dartz/dartz.dart';
import 'package:weather_app_flutter/core/error/exceptions.dart';
import 'package:weather_app_flutter/core/error/failures.dart';
import 'package:weather_app_flutter/core/util/network_availability_tools/network_info.dart';
import 'package:weather_app_flutter/features/home_page/data/datasource/weather_remote_source.dart';
import 'package:weather_app_flutter/features/home_page/data/models/geocoding_dto.dart';
import 'package:weather_app_flutter/features/home_page/data/models/weather_dto.dart';
import 'package:weather_app_flutter/features/home_page/domain/repositories/home_page_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  WeatherRepositoryImpl(
    this._dataSource,
    this._networkInfo,
  );

  final WeatherRemoteSource _dataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<Failure, WeatherDto>> getWeatherData({
    required double lat,
    required double lon,
    required String units,
  }) async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      try {
        final response = await _dataSource.getWeatherData(
          lat: lat,
          lng: lon,
          units: units,
        );

        if (response == null) {
          return const Left(ServerFailure(message: 'Response parsing error'));
        } else {
          return Right(response);
        }
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } catch (e) {
        return const Left(ServerFailure(message: 'Failed'));
      }
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, List<GeocodingDto>>> getCityByName({
    required String cityName,
  }) async {
    final isConnected = await _networkInfo.isConnected;

    if (isConnected) {
      try {
        final response = await _dataSource.getCityByName(cityName: cityName);

        return Right(response);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      } catch (e) {
        return const Left(ServerFailure(message: 'Failed'));
      }
    } else {
      return Left(NoInternetConnectionFailure());
    }
  }
}
