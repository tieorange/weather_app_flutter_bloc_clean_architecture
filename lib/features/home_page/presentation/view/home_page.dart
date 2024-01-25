// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_places_autocomplete_text_field/google_places_autocomplete_text_field.dart';
import 'package:google_places_autocomplete_text_field/model/prediction.dart';
import 'package:weather_app_flutter/core/constants/app_constants.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: GooglePlacesAutoCompleteTextFormField(
          textEditingController: controller,
          googleAPIKey: AppConstants.googlePlacesApiKey,
          debounceTime: 550,
          focusNode: searchFocusNode,
          inputDecoration: InputDecoration(
            hintText: ' Search any place...',
            border: InputBorder.none,
            suffixIcon: _buildIconButton(),
          ),
          onTapOutside: (event) {
            Future.delayed(
              const Duration(milliseconds: 200),
              () => searchFocusNode.unfocus(),
            );
          },
          maxLines: 1,
          overlayContainer: (child) => Material(
            elevation: 1,
            borderRadius: BorderRadius.circular(12),
            child: child,
          ),
          getPlaceDetailWithLatLng: (prediction) =>
              log('getPlaceDetailWithLatLng'),
          itmClick: _onClickSearchItem,
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.secondary,
              ),
              padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(vertical: 10),
              ),
              textStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
            child: const Text(
              'Show weather details',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
      ),
      body: const HomePageView(),
    );
  }

  IconButton _buildIconButton() {
    return IconButton(
      icon: const Icon(Icons.search),
      color: const Color.fromRGBO(93, 25, 72, 1),
      onPressed: () {
        searchFocusNode.requestFocus();
      },
    );
  }

  void _onClickSearchItem(Prediction prediction) {
    log('_onClickSearchItem');
    final description = prediction.description ?? '';

    controller
      ..text = description
      ..selection = TextSelection.fromPosition(
        TextPosition(offset: description.length),
      );

    // log('placeDetails${prediction.toJson()}');
    final placeNameMain =
        prediction.structuredFormatting?.mainText ?? 'Unknown city';
    final placeNameSecondary = prediction.structuredFormatting?.secondaryText;
    final lat = prediction.lat;
    final lng = prediction.lng;

    context.read<HomePageCubit>().getWeatherForPlace(
          placeNameMain,
          placeNameSecondary,
          lat,
          lng,
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
          loaded: (result, params, units) {
            return HomeBody(result, params);
          },
          initial: () {
            return const Center(child: Text('Welcome to Weather App'));
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
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
