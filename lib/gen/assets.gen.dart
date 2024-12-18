/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Vector.svg
  String get vector => 'assets/images/Vector.svg';

  /// File path: assets/images/apple.jpeg
  AssetGenImage get apple => const AssetGenImage('assets/images/apple.jpeg');

  /// File path: assets/images/arrow_back.svg
  String get arrowBack => 'assets/images/arrow_back.svg';

  /// File path: assets/images/banana.jpeg
  AssetGenImage get banana => const AssetGenImage('assets/images/banana.jpeg');

  /// File path: assets/images/boston.jpeg
  AssetGenImage get boston => const AssetGenImage('assets/images/boston.jpeg');

  /// File path: assets/images/boston1.jpeg
  AssetGenImage get boston1 =>
      const AssetGenImage('assets/images/boston1.jpeg');

  /// File path: assets/images/boston2.jpeg
  AssetGenImage get boston2 =>
      const AssetGenImage('assets/images/boston2.jpeg');

  /// File path: assets/images/bread.jpg
  AssetGenImage get bread => const AssetGenImage('assets/images/bread.jpg');

  /// File path: assets/images/cabbage.jpeg
  AssetGenImage get cabbage =>
      const AssetGenImage('assets/images/cabbage.jpeg');

  /// File path: assets/images/cabbage1.jpg
  AssetGenImage get cabbage1 =>
      const AssetGenImage('assets/images/cabbage1.jpg');

  /// File path: assets/images/grid.svg
  String get grid => 'assets/images/grid.svg';

  /// File path: assets/images/heart.svg
  String get heart => 'assets/images/heart.svg';

  /// File path: assets/images/orange.jpg
  AssetGenImage get orange => const AssetGenImage('assets/images/orange.jpg');

  /// File path: assets/images/orange1.jpg
  AssetGenImage get orange1 => const AssetGenImage('assets/images/orange1.jpg');

  /// File path: assets/images/purple_cauliflower.jpg
  AssetGenImage get purpleCauliflower =>
      const AssetGenImage('assets/images/purple_cauliflower.jpg');

  /// File path: assets/images/search.svg
  String get search => 'assets/images/search.svg';

  /// File path: assets/images/shopping-cart.svg
  String get shoppingCart => 'assets/images/shopping-cart.svg';

  /// File path: assets/images/shopping-cart1.svg
  String get shoppingCart1 => 'assets/images/shopping-cart1.svg';

  /// File path: assets/images/sweets.jpg
  AssetGenImage get sweets => const AssetGenImage('assets/images/sweets.jpg');

  /// File path: assets/images/user.svg
  String get user => 'assets/images/user.svg';

  /// File path: assets/images/vegetables.jpg
  AssetGenImage get vegetables =>
      const AssetGenImage('assets/images/vegetables.jpg');

  /// File path: assets/images/vegetables_image.jpg
  AssetGenImage get vegetablesImage =>
      const AssetGenImage('assets/images/vegetables_image.jpg');

  /// List of all assets
  List<dynamic> get values => [
        vector,
        apple,
        arrowBack,
        banana,
        boston,
        boston1,
        boston2,
        bread,
        cabbage,
        cabbage1,
        grid,
        heart,
        orange,
        orange1,
        purpleCauliflower,
        search,
        shoppingCart,
        shoppingCart1,
        sweets,
        user,
        vegetables,
        vegetablesImage
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = true,
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
