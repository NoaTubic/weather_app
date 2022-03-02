import 'package:flutter/material.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/features/global/widgets/weather_card.dart';
import 'package:weather_app/features/home/presentation/widgets/temperature_text.dart';

class WeatherOverviewCardMini extends StatelessWidget {
  const WeatherOverviewCardMini({
    Key? key,
    required this.weatherIconUrl,
    required this.time,
    required this.temperature,
  }) : super(key: key);

  final String weatherIconUrl;
  final String time;
  final String temperature;

  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    return Padding(
      padding: EdgeInsets.all(sizes.contentPaddingSmall),
      child: WeatherCard(
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: sizes.weatherIconSizeSmall,
                height: sizes.weatherIconSizeSmall,
                child: weatherIconUrl.isEmpty
                    ? Image.asset(
                        'assets/images/close.png',
                        fit: BoxFit.cover,
                        height: sizes.weatherIconSizeSmall,
                        width: sizes.weatherIconSizeSmall,
                      )
                    : Image.network(
                        weatherIconUrl,
                        fit: BoxFit.cover,
                        height: sizes.weatherIconSizeSmall,
                        width: sizes.weatherIconSizeSmall,
                      ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: sizes.bodyTextSmall,
                ),
              ),
              TemperatureText(
                temperature: temperature,
                celsiusFontSize: sizes.bodyTextVerySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
