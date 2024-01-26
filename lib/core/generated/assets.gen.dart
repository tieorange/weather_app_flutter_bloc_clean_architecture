/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimationsGen {
  const $AssetsAnimationsGen();

  /// File path: assets/animations/balloonist.riv
  String get balloonist => 'assets/animations/balloonist.riv';

  /// File path: assets/animations/gps.json
  String get gps => 'assets/animations/gps.json';

  /// File path: assets/animations/rain.json
  String get rain => 'assets/animations/rain.json';

  /// File path: assets/animations/sun.json
  String get sun => 'assets/animations/sun.json';

  /// File path: assets/animations/wind.json
  String get wind => 'assets/animations/wind.json';

  /// List of all assets
  List<String> get values => [balloonist, gps, rain, sun, wind];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_test.png
  AssetGenImage get imageTest =>
      const AssetGenImage('assets/images/image_test.png');

  /// File path: assets/images/q01d.png
  AssetGenImage get q01d => const AssetGenImage('assets/images/q01d.png');

  /// File path: assets/images/q01n.png
  AssetGenImage get q01n => const AssetGenImage('assets/images/q01n.png');

  /// File path: assets/images/q02d.png
  AssetGenImage get q02d => const AssetGenImage('assets/images/q02d.png');

  /// File path: assets/images/q02n.png
  AssetGenImage get q02n => const AssetGenImage('assets/images/q02n.png');

  /// File path: assets/images/q03d.png
  AssetGenImage get q03d => const AssetGenImage('assets/images/q03d.png');

  /// File path: assets/images/q03n.png
  AssetGenImage get q03n => const AssetGenImage('assets/images/q03n.png');

  /// File path: assets/images/q04d.png
  AssetGenImage get q04d => const AssetGenImage('assets/images/q04d.png');

  /// File path: assets/images/q04n.png
  AssetGenImage get q04n => const AssetGenImage('assets/images/q04n.png');

  /// File path: assets/images/q09d.png
  AssetGenImage get q09d => const AssetGenImage('assets/images/q09d.png');

  /// File path: assets/images/q09n.png
  AssetGenImage get q09n => const AssetGenImage('assets/images/q09n.png');

  /// File path: assets/images/q10d.png
  AssetGenImage get q10d => const AssetGenImage('assets/images/q10d.png');

  /// File path: assets/images/q10n.png
  AssetGenImage get q10n => const AssetGenImage('assets/images/q10n.png');

  /// File path: assets/images/q11d.png
  AssetGenImage get q11d => const AssetGenImage('assets/images/q11d.png');

  /// File path: assets/images/q11n.png
  AssetGenImage get q11n => const AssetGenImage('assets/images/q11n.png');

  /// File path: assets/images/q13d.png
  AssetGenImage get q13d => const AssetGenImage('assets/images/q13d.png');

  /// File path: assets/images/q13n.png
  AssetGenImage get q13n => const AssetGenImage('assets/images/q13n.png');

  /// File path: assets/images/q50d.png
  AssetGenImage get q50d => const AssetGenImage('assets/images/q50d.png');

  /// File path: assets/images/q50n.png
  AssetGenImage get q50n => const AssetGenImage('assets/images/q50n.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        imageTest,
        q01d,
        q01n,
        q02d,
        q02n,
        q03d,
        q03n,
        q04d,
        q04n,
        q09d,
        q09n,
        q10d,
        q10n,
        q11d,
        q11n,
        q13d,
        q13n,
        q50d,
        q50n
      ];
}

class Assets {
  Assets._();

  static const $AssetsAnimationsGen animations = $AssetsAnimationsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
