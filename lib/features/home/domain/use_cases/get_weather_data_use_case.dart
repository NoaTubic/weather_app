import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/use_cases/use_case.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';
import 'package:weather_app/features/home/domain/repositories/weather_repository.dart';

@injectable
class GetWeatherDataUseCase implements UseCase<WeatherDataEntity, NoParams> {
  final WeatherRepository weatherRepository;

  GetWeatherDataUseCase({required this.weatherRepository});

  @override
  Future<Either<Failure, WeatherDataEntity>> call(NoParams params) async {
    return await weatherRepository.getWeatherData();
  }
}
