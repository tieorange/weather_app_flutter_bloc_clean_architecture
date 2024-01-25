import 'package:chopper/chopper.dart';
import 'package:weather_app_flutter/core/constants/app_constants.dart';

part 'geo_coding_api_service.chopper.dart';

@ChopperApi()
abstract class GeoCodingApi extends ChopperService {
  static GeoCodingApi create([ChopperClient? client]) =>
      _$GeoCodingApi(client ?? ChopperClient());

  @Get(
    path: 'geo/1.0/direct?q={cityName}&appid=${AppConstants.apiKey}',
  )
  Future<Response<dynamic>> getCityByName({
    @Path('cityName') required String cityName,
  });
}
