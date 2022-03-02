import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/core/data/api/api_client.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/search/data/models/search_model.dart';
import 'package:weather_app/features/search/domain/entities/search_entity.dart';
import 'package:weather_app/features/search/domain/repositories/search_repository.dart';

@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  final ApiClient apiClient;
  SearchRepositoryImpl({
    required this.apiClient,
  });

  @override
  Future<Either<Failure, List<SearchEntity>>> searchCity(String input) async {
    try {
      final searchModels = await apiClient.searchCity(query: input);
      final searchEntity = convertModel(searchModels);
      return right(searchEntity);
    } on DioError catch (error) {
      if (error.isNoInternetConnectionError()) {
        return left(const Failure.offline());
      }
    } catch (exception) {
      debugPrint(exception.toString());
    }
    return left(const Failure.unexpectedError());
  }

  List<SearchEntity> convertModel(List<SearchModel> searchModels) {
    List<SearchEntity> entities = [];
    for (var model in searchModels) {
      entities.add(SearchEntity.fromModel(model));
    }
    return entities;
  }
}
