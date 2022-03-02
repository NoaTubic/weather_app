import 'package:flutter/material.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';

TextStyle celsiusTextStyle(BuildContext context) => TextStyle(
    fontSize: AppSizes.of(context)!.sizes.bodyText,
    color: Theme.of(context).primaryColor);
