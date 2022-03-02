// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/data/api/api_client.dart' as _i8;
import '../features/global/services/location_service.dart' as _i7;
import '../features/home/data/data_source/local/local_data_source.dart' as _i5;
import '../features/home/data/data_source/local/local_data_source_impl.dart'
    as _i6;
import '../features/home/data/data_source/remote/remote_data_source.dart'
    as _i9;
import '../features/home/data/data_source/remote/remote_data_source_impl.dart'
    as _i10;
import '../features/home/data/repositories/weather_repository_impl.dart'
    as _i14;
import '../features/home/domain/repositories/weather_repository.dart' as _i13;
import '../features/home/domain/use_cases/get_weather_data_use_case.dart'
    as _i15;
import '../features/home/presentation/state/cubit/weather_cubit.dart' as _i18;
import '../features/search/data/repositories/search_repository_impl.dart'
    as _i12;
import '../features/search/domain/repositories/search_repository.dart' as _i11;
import '../features/search/domain/use_cases/search_city_use_case.dart' as _i16;
import '../features/search/presentation/state/cubit/search_cubit.dart' as _i17;
import '../routes/auto_router.dart' as _i3;
import 'injection.dart' as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.factory<_i4.Dio>(() => registerModule.dio);
  gh.factory<_i5.LocalDataSource>(() => _i6.LocalDataSourceImpl());
  gh.lazySingleton<_i7.LocationService>(() => _i7.LocationServiceImpl());
  gh.lazySingleton<_i8.ApiClient>(() => _i8.ApiClient(get<_i4.Dio>()));
  gh.factory<_i9.RemoteDataSource>(
      () => _i10.RemoteDataSourceImpl(get<_i8.ApiClient>()));
  gh.lazySingleton<_i11.SearchRepository>(
      () => _i12.SearchRepositoryImpl(apiClient: get<_i8.ApiClient>()));
  gh.lazySingleton<_i13.WeatherRepository>(() => _i14.WeatherRepositoryImpl(
      get<_i9.RemoteDataSource>(), get<_i5.LocalDataSource>()));
  gh.factory<_i15.GetWeatherDataUseCase>(() => _i15.GetWeatherDataUseCase(
      weatherRepository: get<_i13.WeatherRepository>()));
  gh.factory<_i16.SearchCityUseCase>(() =>
      _i16.SearchCityUseCase(searchRepository: get<_i11.SearchRepository>()));
  gh.factory<_i17.SearchCubit>(() => _i17.SearchCubit(
      get<_i16.SearchCityUseCase>(), get<_i7.LocationService>()));
  gh.lazySingleton<_i18.WeatherCubit>(
      () => _i18.WeatherCubit(get<_i15.GetWeatherDataUseCase>()));
  return get;
}

class _$RegisterModule extends _i19.RegisterModule {}
