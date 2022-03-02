import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

mixin GeoLocatorHandler {
  Future<String> getCurrentCity() async {
    final position = await determinePosition();
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    return placemarks.first.locality ?? '';
  }

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }
}
