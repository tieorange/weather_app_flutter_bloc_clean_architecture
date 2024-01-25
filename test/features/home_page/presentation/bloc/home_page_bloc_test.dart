/*
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';

void main() {
  group('HomePageCubit', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          HomePageCubit(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final homePageCubit = HomePageCubit();
      expect(homePageCubit.state, equals(HomePageState.initial()));
    });

    */
/*blocTest<HomePageCubit, HomePageState>(
      'CustomHomePageEvent emits nothing',
      build: HomePageCubit.new,
      act: (bloc) => bloc.add(const CustomHomePageEvent()),
      expect: () => <HomePageState>[],
    );*//*

  });
}
*/
