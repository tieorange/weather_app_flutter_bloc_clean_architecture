// ignore_for_file: prefer_const_constructors, unnecessary_breaks

import 'package:flutter/material.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_page.dart';
import 'package:weather_app_flutter/features/introduction_page/presentation/view/introduction_page.dart';
import 'package:weather_app_flutter/features/splash_page/presentation/view/splash_screen.dart';
import 'package:weather_app_flutter/features/weather_details_page/presentation/view/weather_details_page.dart';

enum RouteType {
  push,
  pop,
}

enum AppRoutes {
  splashScreen('/splashScreen'),
  introductionScreen('/introduction'),
  home('/home'),
  weatherDetailsScreen('/weatherDetails'),
  settings('/settings');

  const AppRoutes(this.routeName);

  final String routeName;
}

abstract class AppRouter {
  static final List<AppRoutes> history = [];
  static final initRouter = AppRoutes.home.routeName;
  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppRoutes.splashScreen.routeName: (context) {
      return SplashPage();
    },
    AppRoutes.introductionScreen.routeName: (context) {
      return IntroductionPage();
    },
    AppRoutes.settings.routeName: (context) {
      return const SplashPage();
    },
    AppRoutes.home.routeName: (context) {
      return HomePage();
    },
    AppRoutes.weatherDetailsScreen.routeName: (context) {
      return WeatherDetailsPage();
    },
  };

  static void goToHome(BuildContext context) {
    popAndPushNamed(context, AppRoutes.home);
  }

  static void goToWeatherDetails(BuildContext context) {
    push(AppRoutes.weatherDetailsScreen, context);
  }

  static void goToIntroductionScreen(BuildContext context) {
    popAndPushNamed(context, AppRoutes.introductionScreen);
  }

  static Future<dynamic> goToSettings(BuildContext context) async {
    final result = await push(AppRoutes.settings, context);

    return result;
  }

  static void pop(
    BuildContext context, {
    bool rootNavigator = false,
    Object? args,
  }) {
    Navigator.of(context, rootNavigator: rootNavigator).pop(args);
  }

  static Future<dynamic> push(
    AppRoutes route,
    BuildContext context, {
    Object? args,
    bool includeToHistory = false,
  }) async {
    if (includeToHistory) {
      history.add(route);
    }

    return Navigator.of(context).pushNamed(route.routeName, arguments: args);
  }

  static void popAndPushNamed(
    BuildContext context,
    AppRoutes route, {
    bool rootNavigator = false,
  }) {
    Navigator.of(context, rootNavigator: rootNavigator).popAndPushNamed(
      route.routeName,
    );
  }

  static void popUntil(BuildContext context, AppRoutes route) {
    Navigator.of(
      context,
      rootNavigator: true,
    ).popUntil(ModalRoute.withName(route.routeName));
  }
//endregion
}
