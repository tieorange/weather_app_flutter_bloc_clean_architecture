// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'package:weather_app_flutter/core/generated/assets.gen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: _buildAnimations(height, width) /*buildRiveAnimation()*/,
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
      ],
    );
  }

  RiveAnimation buildRiveAnimation() {
    return RiveAnimation.asset(
      Assets.animations.balloonist,
      // 'https://cdn.rive.app/animations/vehicles.riv',
    );
  }
}
