import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/use_cases/use_case.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/search/domain/entities/search_entity.dart';
import 'package:weather_app/features/search/domain/repositories/search_repository.dart';

@injectable
class SearchCityUseCase extends UseCase<List<SearchEntity>, String> {
  final SearchRepository searchRepository;
  SearchCityUseCase({
    required this.searchRepository,
  });

  @override
  Future<Either<Failure, List<SearchEntity>>> call(String params) async {
    return await searchRepository.searchCity(params);
  }
}
