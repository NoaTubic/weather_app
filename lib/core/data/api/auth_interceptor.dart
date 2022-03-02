import 'package:dio/dio.dart';
import 'package:weather_app/core/data/api/api_constants.dart';
import 'package:weather_app/features/global/services/location_service.dart';
import 'package:weather_app/injections/injection.dart';

class AuthInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final entries = [const MapEntry('key', apiKey)];
    if (!options.queryParameters.containsKey(queryParameter)) {
      final position = await locator<LocationService>().getCurrentLocation();
      entries.add(MapEntry(queryParameter, position));
    }
    options.queryParameters.addEntries(entries);
    super.onRequest(options, handler);
  }
}
