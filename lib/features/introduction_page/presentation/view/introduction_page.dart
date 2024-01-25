// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_flutter/core/generated/assets.gen.dart';
import 'package:weather_app_flutter/core/navigation/app_router.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  /*
  * - Check weather in any city
  * - See detailed weather forecast
  * - Get weather in Your location
  * */

  @override
  void initState() {
    super.initState();
  }

  void onPressDone() {
    AppRouter.goToHome(context);
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.deepPurple[400],
      pages: introList,
      showNextButton: false,
      done: const Text('Done'),
      doneStyle: TextButton.styleFrom(foregroundColor: Colors.white),
      onDone: onPressDone,
    );
  }

  static final pageTextStyle = PageDecoration(
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 25,
    ),
    bodyTextStyle: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 17,
      color: Colors.white,
    ),
  );
  final introList = [
    PageViewModel(
      // animation: sun
      title: 'Check weather in any city',
      body: 'Abu Dhabi, Berlin, Paris \n you name it',
      image: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: LottieBuilder.asset(Assets.animations.sun),
      ),
      decoration: pageTextStyle,
    ),
    PageViewModel(
      // animation: wind
      title: 'See detailed weather forecast',
      body: 'Never miss a rainy day while you are running',
      image: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: LottieBuilder.asset(Assets.animations.wind),
      ),
      decoration: pageTextStyle,
    ),
    PageViewModel(
      // animation: wind
      title: 'Get weather in Your GPS location',
      body: 'If you want - no need to waste time typing your city',
      image: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: LottieBuilder.asset(Assets.animations.gps),
      ),
      decoration: pageTextStyle,
    ),
  ];
}
