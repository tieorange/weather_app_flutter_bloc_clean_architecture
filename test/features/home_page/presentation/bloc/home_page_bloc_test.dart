// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_page_bloc.dart';

void main() {
  group('HomePageBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          HomePageBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final homePageBloc = HomePageBloc();
      expect(homePageBloc.state, equals(HomePageState.initial()));
    });

    /*blocTest<HomePageBloc, HomePageState>(
      'CustomHomePageEvent emits nothing',
      build: HomePageBloc.new,
      act: (bloc) => bloc.add(const CustomHomePageEvent()),
      expect: () => <HomePageState>[],
    );*/
  });
}
