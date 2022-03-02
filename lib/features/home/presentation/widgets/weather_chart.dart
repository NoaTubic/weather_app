import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/features/home/domain/entities/hour_forecast_entity.dart';

class WeatherChart extends StatefulWidget {
  final List<HourForecastEntity> hourForecasts;

  const WeatherChart({
    Key? key,
    required this.hourForecasts,
  }) : super(key: key);

  @override
  State<WeatherChart> createState() => _WeatherChartState();
}

class _WeatherChartState extends State<WeatherChart> {
  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    return Stack(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 1.65,
          child: Padding(
            padding: EdgeInsets.all(sizes.contentPadding),
            child: LineChart(
              mainData(),
            ),
          ),
        ),
      ],
    );
  }

  LineChartData mainData() {
    return LineChartData(
      borderData: borderData,
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return '2';
              case 6:
                return '6';
              case 10:
                return '10';
              case 14:
                return '14';
              case 18:
                return '18';
              case 22:
                return '22';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'Sunny';
              case 20:
                return 'Rainy';
              case 40:
                return 'Showers';
            }
            return '';
          },
          reservedSize: 45,
          margin: 12,
        ),
      ),
      minX: 0,
      maxX: 24,
      minY: 0,
      maxY: 50,
      lineBarsData: [
        LineChartBarData(
          spots: widget.hourForecasts
              .map((e) => FlSpot(double.parse(e.formatHour()), e.precipMm))
              .toList(),
          isCurved: true,
          barWidth: 3,
          colors: [
            Theme.of(context).primaryColor,
          ],
          isStrokeCapRound: true,
          dotData: FlDotData(
            show: false,
          ),
        ),
      ],
    );
  }

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Colors.transparent),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );
}
