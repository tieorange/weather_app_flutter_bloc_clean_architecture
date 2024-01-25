import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_places_autocomplete_text_field/google_places_autocomplete_text_field.dart';
import 'package:weather_app_flutter/core/constants/app_constants.dart';
import 'package:weather_app_flutter/core/util/dependency_injection/dependency_injection.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  FocusNode searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<HomePageCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: GooglePlacesAutoCompleteTextFormField(
            textEditingController: controller,
            googleAPIKey: AppConstants.googlePlacesApiKey,
            debounceTime: 550,
            focusNode: searchFocusNode,
            inputDecoration: InputDecoration(
              hintText: ' Search any place...',
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                color: const Color.fromRGBO(93, 25, 72, 1),
                onPressed: () {
                  searchFocusNode.requestFocus();
                },
              ),
            ),
            onTapOutside: (event) => searchFocusNode.unfocus(),
            maxLines: 1,
            overlayContainer: (child) => Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(12),
              child: child,
            ),
            getPlaceDetailWithLatLng: (prediction) {
              log('placeDetails${prediction.toJson()}');
              // prediction.structuredFormatting.mainText
            },
            itmClick: (prediction) {
              final description = prediction.description ?? '';

              controller
                ..text = description
                ..selection = TextSelection.fromPosition(
                  TextPosition(offset: description.length),
                );
            },
          ),
        ),
        body: const HomePageView(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
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
    // context.read<HomePageCubit>().getWeatherForCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {},
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
