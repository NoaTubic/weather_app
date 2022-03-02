import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/api/api_client.dart';
import 'package:weather_app/features/home/data/data_source/remote/remote_data_source.dart';

import '../../models/responses/weather_response/weather_response.dart';

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final ApiClient apiClient;

  RemoteDataSourceImpl(this.apiClient);

  @override
  Future<WeatherResponse> getCurrentWeather() async {
    return await apiClient.getRealtimeWeather();
  }

  @override
  Future<WeatherResponse> getForecastWeather() async {
    return await apiClient.getForecastWeather();
  }
}
