import 'package:flutter/material.dart';

import 'package:weather_app/features/global/constants/constants.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/features/global/strings/string_constants.dart';

class TemperatureText extends StatelessWidget {
  const TemperatureText({
    Key? key,
    required this.temperature,
    this.fontSize = 0,
    required this.celsiusFontSize,
  }) : super(key: key);

  final String temperature;
  final double fontSize;
  final double celsiusFontSize;

  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          temperature,
          style: TextStyle(fontSize: fontSize == 0 ? sizes.bodyText : fontSize),
        ),
        Text(
          StringConstants.celsius,
          style: celsiusTextStyle(context).copyWith(fontSize: celsiusFontSize),
        ),
      ],
    );
  }
}
