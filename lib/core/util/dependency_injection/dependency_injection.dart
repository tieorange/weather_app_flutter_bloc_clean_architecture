import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:weather_app_flutter/core/api/api_provider.dart';
import 'package:weather_app_flutter/core/util/network_availability_tools/network_info.dart';
import 'package:weather_app_flutter/features/home_page/data/datasource/weather_remote_source.dart';
import 'package:weather_app_flutter/features/home_page/data/repositories/home_page_repository_impl.dart';
import 'package:weather_app_flutter/features/home_page/domain/repositories/home_page_repository.dart';
import 'package:weather_app_flutter/features/home_page/domain/usecase/get_city_by_name_usecase.dart';
import 'package:weather_app_flutter/features/home_page/domain/usecase/get_weather_data_usecase.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';

final di = GetIt.instance;

abstract class DependencyInjector {
  static Future<void> init() async {
    ApiProvider.create();
    final geoCodingApi = ApiProvider.geoCodingApi;
    final weatherApi = ApiProvider.weatherApi;
    di
      ..registerLazySingleton<WeatherRemoteSource>(
        () => WeatherRemoteSourceImpl(weatherApi, geoCodingApi),
      )
      ..registerLazySingleton<NetworkInfo>(
        () => NetworkInfoImpl(InternetConnectionChecker()),
      )
      ..registerLazySingleton<WeatherRepository>(
        () => WeatherRepositoryImpl(di(), di()),
      )
      ..registerLazySingleton<GetWeatherDataUseCase>(
        () => GetWeatherDataUseCase(di()),
      )
      ..registerLazySingleton<GetCityByNameUseCase>(
        () => GetCityByNameUseCase(di()),
      )
      ..registerLazySingleton<HomePageCubit>(
        () => HomePageCubit(di(), di()),
      );
  }
}
