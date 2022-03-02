import 'package:injectable/injectable.dart';
import 'package:weather_app/features/global/permissions/geolocator_handler.dart';
import 'package:weather_app/features/global/utils/string_fromat_extension.dart';

@LazySingleton(as: LocationService)
class LocationServiceImpl with GeoLocatorHandler implements LocationService {
  String? _currentLocation;

  @override
  void updateCurrentLocation(String? name) {
    if (name != null) {
      _currentLocation = name.stringReplaceSpaces();
      return;
    }
    _currentLocation = null;
  }

  @override
  Future<String> getCurrentLocation() async {
    if (_currentLocation != null) {
      return _currentLocation!;
    }
    return await getCurrentCity();
  }

  @override
  bool isAlreadyReseted() {
    return _currentLocation == null;
  }
}

abstract class LocationService {
  void updateCurrentLocation(String? name);
  Future<String> getCurrentLocation();
  bool isAlreadyReseted();
}
