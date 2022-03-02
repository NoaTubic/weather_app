import 'package:flutter/material.dart';

import 'mobile_sizes.dart';
import 'sizes.dart';
import 'tablet_sizes.dart';

class AppSizes extends InheritedWidget {
  AppSizes({
    Key? key,
    required BuildContext context,
    required Widget child,
  }) : super(key: key, child: child) {
    final formFactor = getFormFactor(context);
    switch (formFactor) {
      case _ScreenType.tablet:
        sizes = TabletSizes();
        break;
      default:
        sizes = MobileSizes();
    }
  }

  late final Sizes sizes;

  @override
  bool updateShouldNotify(AppSizes oldWidget) => false;

  static AppSizes? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppSizes>();
  }
}

class _FormFactor {
  static double tablet = 600;
}

_ScreenType getFormFactor(BuildContext context) {
  final deviceWidth = MediaQuery.of(context).size.shortestSide;
  if (deviceWidth > _FormFactor.tablet) {
    return _ScreenType.tablet;
  }
  return _ScreenType.handset;
}

enum _ScreenType {
  tablet,
  handset,
}
