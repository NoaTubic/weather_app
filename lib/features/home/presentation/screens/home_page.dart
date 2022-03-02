import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:weather_app/domain/failure/failure.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/features/global/widgets/snackbar.dart';
import 'package:weather_app/features/home/domain/entities/weather_data_entity.dart';
import 'package:weather_app/features/home/domain/entities/weather_entity.dart';
import 'package:weather_app/features/home/presentation/state/cubit/weather_cubit.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_chart.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_overview_card.dart';
import 'package:weather_app/features/home/presentation/widgets/weather_tabview.dart';
import 'package:weather_app/features/search/presentation/state/cubit/search_cubit.dart';
import 'package:weather_app/features/search/presentation/widgets/weather_floating_search_bar.dart';
import 'package:weather_app/injections/injection.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final FloatingSearchBarController controller;

  @override
  void initState() {
    super.initState();
    controller = FloatingSearchBarController()..close();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    final sizes = AppSizes.of(context)!.sizes;
    RefreshController refreshController =
        RefreshController(initialRefresh: false);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              locator<WeatherCubit>()..fetchWeatherData(isInitial: true),
        ),
        BlocProvider(
          create: (context) => locator<SearchCubit>(),
        ),
      ],
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {
          if (state.failure != null) {
            return showInSnackBar(context, state.failure!.getFailureMessage());
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: sizes.bodyPadding),
                  child: HomeBody(refreshController: refreshController),
                ),
                WeatherFloatingSearchBar(
                  isLoading: state.isLoading!,
                  controller: controller,
                  suggestions: state.searchEntity!,
                  body: Container(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.refreshController,
  }) : super(key: key);

  final RefreshController refreshController;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        state.maybeMap(
            error: (value) =>
                showInSnackBar(context, value.failure.getFailureMessage()),
            orElse: () {});
      },
      builder: (context, state) {
        return state.maybeMap(
          loading: (value) => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (value) => HomePageBody(
              weatherDataEntity: value.weatherDataEntity!,
              refreshController: refreshController),
          orElse: () => Container(),
        );
      },
    );
  }
}

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
    required this.weatherDataEntity,
    required this.refreshController,
  }) : super(key: key);

  final WeatherDataEntity weatherDataEntity;
  final RefreshController refreshController;

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      controller: refreshController,
      onRefresh: () async {
        await context.read<WeatherCubit>().fetchWeatherData();
        refreshController.refreshCompleted();
      },
      child: Column(
        children: [
          WeatherOverviewCard(
            date: weatherDataEntity.weatherEntity.formatDate(),
            location: weatherDataEntity.weatherEntity.formatLocation(),
            temperature: weatherDataEntity.weatherEntity.temperature.toString(),
            weatherIconUrl: weatherDataEntity.weatherEntity.fullConditionUrl,
          ),
          WeatherTabView(
            forecastEntity: weatherDataEntity,
          ),
          Expanded(
            child: WeatherChart(hourForecasts: weatherDataEntity.todayWeather),
          ),
        ],
      ),
    );
  }
}
