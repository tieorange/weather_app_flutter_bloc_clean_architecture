part of 'home_cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = _Initial;

  const factory HomePageState.loading() = _Loading;

  // TODO: DTO -> Entity
  const factory HomePageState.loaded(
    WeatherDto result,
    HomePageLoadedParams params,
    String weatherMetricsUnit,
  ) = _Loaded;

  const factory HomePageState.error(Failure failure) = _Error;
}

class HomePageLoadedParams implements Equatable {
  HomePageLoadedParams({
    required this.placeNameMain,
    this.placeNameSecondary,
  });

  final String placeNameMain;
  final String? placeNameSecondary;

  @override
  List<Object?> get props => [placeNameMain, placeNameSecondary];

  @override
  bool? get stringify => true;
}
