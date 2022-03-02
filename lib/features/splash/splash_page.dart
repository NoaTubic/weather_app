import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:weather_app/features/global/widgets/loading_indicator.dart';
import 'package:weather_app/injections/injection.dart';
import 'package:weather_app/routes/auto_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    FlutterNativeSplash.remove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    goToHomeScreen();
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Hero(
              tag: 'Logo',
              child: Image.asset(
                'assets/icons/cloudy.png',
                width: 130,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 70, top: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: LoadingIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  void goToHomeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        locator<AppRouter>().replace(
          const HomeRoute(),
        );
      },
    );
  }
}
