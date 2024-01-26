// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_places_autocomplete_text_field/google_places_autocomplete_text_field.dart';
import 'package:google_places_autocomplete_text_field/model/prediction.dart';
import 'package:weather_app_flutter/core/constants/app_constants.dart';
import 'package:weather_app_flutter/core/navigation/app_router.dart';
import 'package:weather_app_flutter/features/home_page/presentation/bloc/home_cubit.dart';
import 'package:weather_app_flutter/features/home_page/presentation/view/home_body.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key}) {
    print('HomePage');
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController controller = TextEditingController();
  FocusNode searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      appBar: AppBar(
        title: _buildPlacesAutoComplete(),
        centerTitle: false,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: const HomePageView(),
      floatingActionButton: Animate(
        child: FloatingActionButton.extended(
          onPressed: () {
            AppRouter.goToWeatherDetails(context);
          },
          label: Text('Forecast', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.sunny, color: Colors.white),
          backgroundColor: Colors.pink,
        ),
      ).animate().fade().scale().slideY(),
    );
  }

  Widget _buildPlacesAutoComplete() {
    return Card(
      elevation: 2,
      child: GooglePlacesAutoCompleteTextFormField(
        textEditingController: controller,
        googleAPIKey: AppConstants.googlePlacesApiKey,
        debounceTime: 550,
        focusNode: searchFocusNode,
        textAlignVertical: TextAlignVertical.center,
        inputDecoration: InputDecoration(
          hintText: ' Search any place...',
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          suffixIcon: _buildIconButton(),
        ),
        onTapOutside: (event) {
          try {
            Future.delayed(
              const Duration(milliseconds: 300),
              () => searchFocusNode.unfocus(),
            );
          } catch (e) {
            log(e.toString());
          }
        },
        onTap: controller.clear,
        maxLines: 1,
        isLatLngRequired: true,
        overlayContainer: (child) => Material(
          elevation: 1,
          borderRadius: BorderRadius.circular(12),
          child: child,
        ),
        getPlaceDetailWithLatLng: (prediction) {
          final placeNameMain =
              prediction.structuredFormatting?.mainText ?? 'Unknown city';
          final placeNameSecondary =
              prediction.structuredFormatting?.secondaryText;
          final lat = prediction.lat;
          final lng = prediction.lng;

          context.read<HomePageCubit>().getWeatherForPlace(
                placeNameMain,
                placeNameSecondary,
                lat,
                lng,
              );
        },
        itmClick: _onClickSearchItem,
      ),
    );
  }

  SizedBox bottomNavBar(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 10),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color.fromRGBO(93, 25, 72, 1).withOpacity(0.7),
            ),
            padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 10),
            ),
            textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
          child: const Text(
            'Show forecast',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }

  IconButton _buildIconButton() {
    return IconButton(
      icon: const Icon(Icons.search),
      color: const Color.fromRGBO(93, 25, 72, 1),
      onPressed: () {
        controller.clear();
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
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    searchFocusNode.dispose();
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
