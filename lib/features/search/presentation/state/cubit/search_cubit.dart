import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/global/services/location_service.dart';
import 'package:weather_app/features/home/presentation/state/cubit/weather_cubit.dart';
import 'package:weather_app/features/search/domain/entities/search_entity.dart';
import 'package:weather_app/features/search/domain/use_cases/search_city_use_case.dart';
import 'package:weather_app/injections/injection.dart';
part 'search_cubit.freezed.dart';
part 'search_state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchCityUseCase, this._locationService)
      : super(SearchState.initial());

  final SearchCityUseCase _searchCityUseCase;
  final LocationService _locationService;

  Future<void> searchCity(String query) async {
    emit(state.copyWith(isLoading: false, searchEntity: []));
    if (query.isEmpty) return;
    emit(state.copyWith(isLoading: true));
    try {
      final result = await _searchCityUseCase(query);
      result.fold(
          (failure) => emit(SearchState.error(failure: failure)),
          ((searchEntity) => emit(
              state.copyWith(isLoading: false, searchEntity: searchEntity))));
    } catch (exception) {
      debugPrint(exception.toString());
      emit(SearchState.error(failure: const Failure.unexpectedError()));
    }
  }

  Future<void> selectCity(String name) async {
    _locationService.updateCurrentLocation(name);
    await locator<WeatherCubit>().fetchWeatherData();
  }
}
