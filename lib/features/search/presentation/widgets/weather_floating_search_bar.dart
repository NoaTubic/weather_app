import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:weather_app/features/global/sizes/app_sizes.dart';
import 'package:weather_app/features/global/widgets/loading_indicator.dart';
import 'package:weather_app/features/home/presentation/state/cubit/weather_cubit.dart';
import 'package:weather_app/features/search/domain/entities/search_entity.dart';
import 'package:weather_app/features/search/presentation/state/cubit/search_cubit.dart';
import 'package:weather_app/injections/injection.dart';

class WeatherFloatingSearchBar extends StatelessWidget {
  const WeatherFloatingSearchBar({
    Key? key,
    required this.controller,
    required this.suggestions,
    required this.isLoading,
    required this.body,
  }) : super(key: key);

  final FloatingSearchBarController controller;
  final List<SearchEntity> suggestions;
  final bool isLoading;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    final sizes = AppSizes.of(context)!.sizes;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return FloatingSearchBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      iconColor: Colors.white,
      controller: controller,
      body: FloatingSearchBarScrollNotifier(
        child: body,
      ),
      automaticallyImplyBackButton: false,
      axisAlignment: isPortrait ? 0.0 : -1.0,
      transition: CircularFloatingSearchBarTransition(
        spacing: 10,
      ),
      transitionDuration: const Duration(milliseconds: 800),
      physics: const BouncingScrollPhysics(),
      debounceDelay: const Duration(milliseconds: 300),
      title: Text(
        'Search city',
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: Colors.white),
      ),
      actions: [
        FloatingSearchBarAction(
          showIfOpened: false,
          child: CircularButton(
              icon: const Icon(Icons.place),
              onPressed: locator<WeatherCubit>().clearSelectedLocation),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        ),
      ],
      queryStyle: TextStyle(fontSize: sizes.bodyText, color: Colors.white),
      // Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),
      hint: 'Search city',
      hintStyle: TextStyle(fontSize: sizes.bodyText, color: Colors.white),
      onQueryChanged: (query) {
        context.read<SearchCubit>().searchCity(query);
      },
      onSubmitted: (query) {
        controller.close();
      },
      builder: (context, transition) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: sizes.contentPaddingSmall),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Material(
              color: Colors.white,
              elevation: 5.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (isLoading) ...[
                    Padding(
                      padding: EdgeInsets.all(sizes.contentPaddingSmall),
                      child: const LoadingIndicator(
                        size: 20,
                      ),
                    )
                  ],
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 100,
                      maxHeight: MediaQuery.of(context).size.height - 155,
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.all(sizes.contentPaddingSmall),
                      shrinkWrap: true,
                      itemCount: suggestions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: sizes.contentPaddingSmall),
                          leading: Icon(
                            Icons.location_pin,
                            color: Theme.of(context).primaryColor,
                          ),
                          title: Text(suggestions[index].fullName,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.black87)),
                          onTap: () {
                            controller.close();
                            locator<SearchCubit>()
                                .selectCity(suggestions[index].name);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
