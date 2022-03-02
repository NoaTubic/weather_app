import 'package:flutter/material.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_hour_swiper.dart';

class WeatherTabView extends StatefulWidget {
  final WeatherDataEntity forecastEntity;
  const WeatherTabView({
    Key? key,
    required this.forecastEntity,
  }) : super(key: key);

  @override
  State<WeatherTabView> createState() => _WeatherTabViewState();
}

class _WeatherTabViewState extends State<WeatherTabView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    return Column(
      children: [
        TabBar(
          labelStyle: const TextStyle(
            fontSize: 15,
          ),
          indicatorColor: Colors.transparent,
          unselectedLabelColor: Colors.white,
          labelColor: Theme.of(context).primaryColor,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: const [
            Tab(
              text: 'Today',
            ),
            Tab(
              text: 'Tomorrow',
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: sizes.contentPadding),
          child: SizedBox(
            height: 170,
            child: TabBarView(
              children: [
                WeatherHourSwiper(
                    hourForecasts: widget.forecastEntity.todayWeather),
                WeatherHourSwiper(
                    hourForecasts: widget.forecastEntity.tomorrowWeather),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ],
    );
  }
}
