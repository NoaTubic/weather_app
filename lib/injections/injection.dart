import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_app/core/data/api/api_constants.dart';
import 'package:weather_app/core/data/api/auth_interceptor.dart';
import 'injection.config.dart';

final locator = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async {
  $initGetIt(locator);
}

@module
abstract class RegisterModule {
  Dio get dio {
    return Dio(
      BaseOptions(
        baseUrl: baseUrl,
        contentType: 'application/json',
      ),
    )
      ..interceptors.add(AuthInterceptor())
      ..interceptors.add(
        PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90),
      );
  }
}
