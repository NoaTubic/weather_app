import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:weather_app/core/data/database/databse_configure.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/injections/injection.dart';
import 'package:weather_app/routes/auto_router.dart';
import 'package:weather_app/themes/main_theme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await configureDatabase();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();
    return RefreshConfiguration(
      headerBuilder: () => const MaterialClassicHeader(),
      child: MaterialApp.router(
        builder: (context, child) => AppSizes(
          context: context,
          child: child!,
        ),
        routeInformationParser: router.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate(router),
        title: 'Weather App',
        theme: mainThemeData,
      ),
    );
  }
}
