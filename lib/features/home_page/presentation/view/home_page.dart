import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_flutter/core/util/dependency_injection/dependency_injection.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<HomePageCubit>(),
      child: const Scaffold(
        body: HomePageView(),
      ),
    );
  }
}

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  void initState() {
    super.initState();
    context.read<HomePageCubit>().getWeatherForCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {
        print(state);
      },
      builder: (context, state) {
        return state.when(
          initial: () {
            return const Center(child: Text('Welcome to Weather App'));
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: (result) {
            return HomeBody(result);
          },
          error: (failure) {
            return Center(
              child: Text(
                failure.message ?? 'Please check your internet connection',
              ),
            );
          },
        );
      },
    );
  }
}
