part of 'home_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;

  const factory HomePageState.loading() = _Loading;

  // TODO: DTO -> Entity
  const factory HomePageState.loaded(WeatherDto result) = _Loaded;

  const factory HomePageState.error(Failure failure) = _Error;
}
