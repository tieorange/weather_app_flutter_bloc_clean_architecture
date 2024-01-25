import 'package:chopper/chopper.dart';
import 'package:weather_app_flutter/core/constants/app_constants.dart';

part 'weather_api_service.chopper.dart';

@ChopperApi()
abstract class OpenWeatherApi extends ChopperService {
  static OpenWeatherApi create([ChopperClient? client]) =>
      _$OpenWeatherApi(client ?? ChopperClient());

  @Get(
    path: 'data/3.0/onecall?lat={lat}&lon={lon}'
        '&exclude=alerts,minutely'
        '&appid=${AppConstants.apiKey}'
        '&units={units}',
  )
  Future<Response<dynamic>> getWeatherData({
    @Path('lat') required double lat,
    @Path('lon') required double lon,
    @Path('units') required String units,
  });
}
