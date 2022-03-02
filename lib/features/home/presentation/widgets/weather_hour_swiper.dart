import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/features/home/domain/entities/hour_forecast_entity.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_overview_card_mini.dart';

class WeatherHourSwiper extends StatelessWidget {
  final List<HourForecastEntity> hourForecasts;
  const WeatherHourSwiper({
    Key? key,
    required this.hourForecasts,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ConstrainedBox(
        child: Swiper(
          index: (DateTime.now().hour + 1) % 24,
          outer: false,
          itemBuilder: (c, i) {
            final hour = hourForecasts[i];
            return WeatherOverviewCardMini(
              weatherIconUrl: hour.fullConditionIconUrl,
              time: hour.formatDate(),
              temperature: hour.temperature.toString(),
            );
          },
          itemCount: hourForecasts.length,
          viewportFraction: 0.36,
          scale: 1,
        ),
        constraints: BoxConstraints.loose(Size(screenWidth, 170.0)));
  }
}
