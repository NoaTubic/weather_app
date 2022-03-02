import 'package:flutter/material.dart';
import 'package:weather_app/features/global/colors/weather_app_colors.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';

class WeatherCard extends StatelessWidget {
  final Widget child;

  const WeatherCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    return Container(
      padding: EdgeInsets.all(sizes.contentPadding),
      decoration: BoxDecoration(
          color: WeatherAppColors.cardBackgroundColor,
          border: Border.all(),
          borderRadius: BorderRadius.all(
            Radius.circular(sizes.cardBorderRadius),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 1,
              offset: const Offset(0, 1),
            ),
          ]),
      child: child,
    );
  }
}
