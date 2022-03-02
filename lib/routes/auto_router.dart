import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/features/home/presentation/screens/home_page.dart';
import 'package:weather_app/features/splash/splash_page.dart';

part 'auto_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: HomePage),
  ],
)
@lazySingleton
class AppRouter extends _$AppRouter {}
