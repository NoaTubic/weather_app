import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/features/global/services/location_service.dart';

void main() {
  final locationService = TestLocationServiceImpl();

  group('Location service tests', () {
    test(
      'Current location is null when the LocationService is instanced.',
      () {
        var result = locationService.isAlreadyReseted();
        expect(result, true);
      },
    );

    test(
        'Current location is not null when the LocationService is updated with a non null value and returns that value',
        () async {
      locationService.updateCurrentLocation(query);
      var result = locationService.isAlreadyReseted();
      expect(result, false);
      var currentLocation = await locationService.getCurrentLocation();
      expect(currentLocation, query);
    });

    test(
      'Current location is null and LocationService returns current location from GeoLocatorHandler',
      () async {
        var result = await locationService.getCurrentLocation();
        expect(result, query);
      },
    );
  });
}

const String query = 'London';

class TestLocationServiceImpl extends LocationServiceImpl {
  @override
  Future<String> getCurrentCity() async {
    return query;
  }
}
