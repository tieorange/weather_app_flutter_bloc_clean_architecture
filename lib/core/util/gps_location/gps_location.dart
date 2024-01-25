import 'package:geolocator/geolocator.dart';

abstract class GpsLocationService {
  static Future<Position> getLocationData() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('GPS is disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('GPS permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'GPS permissions are permanently denied',
      );
    }

    try {
      final currentPosition = await Geolocator.getCurrentPosition();
      return currentPosition;
    } catch (e) {
      return Future.error(
        'Please turn on GPS in device settings',
      );
    }
  }
}
