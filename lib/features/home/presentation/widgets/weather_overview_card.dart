import 'package:flutter/material.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/features/global/widgets/weather_card.dart';
import 'package:weather_app/features/home/presentation/widgets/temperature_text.dart';

class WeatherOverviewCard extends StatelessWidget {
  final String date;
  final String temperature;
  final String weatherIconUrl;
  final String location;

  const WeatherOverviewCard({
    Key? key,
    required this.date,
    required this.temperature,
    required this.weatherIconUrl,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    return Padding(
      padding: EdgeInsets.all(sizes.contentPadding),
      child: WeatherCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Today'),
                Text(
                  date,
                  style: TextStyle(fontSize: sizes.bodyTextSmall),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TemperatureText(
                  temperature: temperature,
                  fontSize: sizes.temperatureTextBig,
                  celsiusFontSize: sizes.headerText,
                ),
                SizedBox(
                  width: sizes.weatherIconSizeBig,
                  height: sizes.weatherIconSizeBig,
                  child: weatherIconUrl.isEmpty
                      ? Image.asset(
                          'assets/images/close.png',
                          fit: BoxFit.cover,
                          height: sizes.weatherIconSizeBig,
                          width: sizes.weatherIconSizeBig,
                        )
                      : Image.network(
                          weatherIconUrl,
                          fit: BoxFit.cover,
                          height: sizes.weatherIconSizeBig,
                          width: sizes.weatherIconSizeBig,
                        ),
                ),
              ],
            ),
            const Divider(),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_pin,
                    color: Theme.of(context).primaryColor,
                    size: 15,
                  ),
                  Text(
                    location,
                    style: TextStyle(fontSize: sizes.bodyTextSmall),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
