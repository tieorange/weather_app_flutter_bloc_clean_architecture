// ignore_for_file: prefer_const_constructors, unnecessary_breaks

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_page.dart';
import 'package:weather_app_flutter/features/splash_page/presentation/view/splash_screen.dart';

enum RouteType {
  push,
  pop,
}

enum AppRoutes {
  splashScreen('/splashScreen'),
  home('/home'),
  settings('/settings');

  const AppRoutes(this.routeName);

  final String routeName;
}

abstract class AppRouter {
  static final List<AppRoutes> history = [];
  static final initRouter = AppRoutes.splashScreen.routeName;
  static final Map<String, Widget Function(BuildContext context)> routes = {
    AppRoutes.splashScreen.routeName: (context) {
      return SplashPage();
    },
    AppRoutes.settings.routeName: (context) {
      return const HomePage();
    },
    AppRoutes.home.routeName: (context) {
      return HomePage();
    },
  };

  static void goToHome(BuildContext context) {
    _navigate(
      context: context,
      route: AppRoutes.home,
    );
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

  static Future<void> popUntilAndPushNamed(
    BuildContext context, {
    required AppRoutes popUntilRouteName,
    required AppRoutes pushRouteName,
    Function? callback,
    bool rootNavigator = false,
  }) async {
    log('NAVIGATION: Popping until ${popUntilRouteName.routeName} and pushing ${pushRouteName.routeName}');
    callback?.call();
    await Navigator.of(context, rootNavigator: rootNavigator)
        .pushNamedAndRemoveUntil(
      pushRouteName.routeName,
      (route) => route.settings.name == popUntilRouteName.routeName,
    );
  }

  static void popUntil(BuildContext context, AppRoutes route) {
    Navigator.of(
      context,
      rootNavigator: true,
    ).popUntil(ModalRoute.withName(route.routeName));
  }

  //endregion

  //region private methods
  static void _navigate({
    required BuildContext context,
    required AppRoutes route,
    RouteType type = RouteType.push,
    Object? arguments,
  }) {
    final name = route.routeName;
    log('NAVIGATION: Navigating to $name');
    history.add(route);
    switch (type) {
      case RouteType.push:
        Navigator.pushNamed(context, name, arguments: arguments);
        break;
      case RouteType.pop:
        Navigator.popUntil(context, ModalRoute.withName(name));
        break;
    }
  }
}
