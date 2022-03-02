import 'package:flutter/material.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';

class DividerVertical extends StatelessWidget {
  const DividerVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    return SizedBox(
      height: sizes.spacingVertical,
    );
  }
}
