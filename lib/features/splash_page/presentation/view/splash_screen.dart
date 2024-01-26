// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_flutter/core/generated/assets.gen.dart';
import 'package:weather_app_flutter/core/navigation/app_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  int delaySeconds = 5;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: delaySeconds), () {
      AppRouter.goToIntroductionScreen(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _buildAnimations(height, width),
    );
  }

  Column _buildAnimations(double height, double width) {
    return Column(
      children: [
        SizedBox(
          height: height / 1.2,
          width: width,
          child: LottieBuilder.asset(Assets.animations.rain),
        ),
        Text(
          'Weather app',
          style: TextStyle(color: Colors.white70, fontSize: 30),
        ),
        SizedBox(height: 10),
        CircularProgressIndicator(color: Colors.white),
      ],
    );
  }
}
