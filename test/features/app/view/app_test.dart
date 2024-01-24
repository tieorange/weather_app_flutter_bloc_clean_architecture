import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_flutter/features/app/app.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_page.dart';

void main() {
  group('App', () {
    testWidgets('renders App', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
