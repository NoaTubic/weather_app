import 'package:dartz/dartz.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/search/domain/entities/search_entity.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<SearchEntity>>> searchCity(String input);
}
