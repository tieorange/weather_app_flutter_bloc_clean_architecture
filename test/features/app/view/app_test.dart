import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_flutter/features/app/app.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';

void main() {
  testWidgets('App widget test', (WidgetTester tester) async {
    // Wrap your test code with FakeAsync
    await tester.runAsync(() async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const App());

      // You may need to pump frames to complete any pending async operations
      await tester.pump();

      // Your test assertions go here
      expect(find.byType(MaterialApp), findsOneWidget);
      expect(find.byType(BlocProvider<HomePageCubit>), findsOneWidget);
    });
  });
}
