// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_page.dart';

void main() {
  group('HomePagePage', () {
    testWidgets('renders HomePageView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage()));
      expect(find.byType(HomePageView), findsOneWidget);
    });
  });
}
