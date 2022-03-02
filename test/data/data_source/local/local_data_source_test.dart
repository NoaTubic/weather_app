import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:weather_app/core/data/database/databse_configure.dart';
import 'package:weather_app/features/home/data/data_source/local/local_data_source_impl.dart';
import 'package:weather_app/features/home/data/models/responses/weather_data_model.dart';
import '../../../features/home/domain/repositories/weather_repository_test.dart';

@GenerateMocks([])
void main() {
  late LocalDataSourceImpl localDataSource;
  late WeatherDataModel weatherDataModel;

  setUp(() async {
    await configureDatabase(path: Directory.current.path + '/test');
    localDataSource = LocalDataSourceImpl();
    final result = await getWeatherResponse();
    weatherDataModel = WeatherDataModel.fromResponse(result);
  });
  group('Local data source tests', () {
    test(
      'Local data source saves and reads forecast from Hive database successfully',
      () async {
        await localDataSource.saveWeatherData(weatherDataModel);
        final result = await localDataSource.getWeatherData();
        expect(result, weatherDataModel);
      },
    );
  });
}
