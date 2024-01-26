import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_page.dart';

import '../bloc/home_page_bloc_test.mocks.dart'; // Import your HomePageView widget

void main() {
  testWidgets('Renders HomePageView widget', (WidgetTester tester) async {
    // Wrap your widget tree with the necessary providers
    await tester.pumpWidget(
      MaterialApp(
        home: MultiProvider(
          providers: [
            Provider<HomePageCubit>(
              create: (context) => HomePageCubit(
                MockGetWeatherDataUseCase(),
                MockGetCityByNameUseCase(),
              ),
            ),
          ],
          child: const HomePageView(),
        ),
      ),
    );

    // Verify if the HomePageView is present
    expect(find.byType(HomePageView), findsOneWidget);
  });
}
