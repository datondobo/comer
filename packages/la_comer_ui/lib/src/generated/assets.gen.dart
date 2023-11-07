/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back_icon.svg
  SvgGenImage get backIcon => const SvgGenImage('assets/icons/back_icon.svg');

  /// File path: assets/icons/email_outline.svg
  SvgGenImage get emailOutline =>
      const SvgGenImage('assets/icons/email_outline.svg');

  /// List of all assets
  List<SvgGenImage> get values => [backIcon, emailOutline];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesHomeGen get home => const $AssetsImagesHomeGen();

  /// File path: assets/images/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/images/icon.png');

  $AssetsImagesLoginGen get login => const $AssetsImagesLoginGen();

  /// List of all assets
  List<AssetGenImage> get values => [icon];
}

class $AssetsImagesHomeGen {
  const $AssetsImagesHomeGen();

  /// File path: assets/images/home/IconoMenu.png
  AssetGenImage get iconoMenu =>
      const AssetGenImage('assets/images/home/IconoMenu.png');

  /// File path: assets/images/home/banner.svg
  SvgGenImage get banner => const SvgGenImage('assets/images/home/banner.svg');

  /// File path: assets/images/home/carrito.svg
  SvgGenImage get carrito =>
      const SvgGenImage('assets/images/home/carrito.svg');

  /// File path: assets/images/home/changeSucursal.svg
  SvgGenImage get changeSucursal =>
      const SvgGenImage('assets/images/home/changeSucursal.svg');

  /// File path: assets/images/home/corazon.png
  AssetGenImage get corazonPng =>
      const AssetGenImage('assets/images/home/corazon.png');

  /// File path: assets/images/home/corazon.svg
  SvgGenImage get corazonSvg =>
      const SvgGenImage('assets/images/home/corazon.svg');

  /// File path: assets/images/home/filtro.svg
  SvgGenImage get filtro => const SvgGenImage('assets/images/home/filtro.svg');

  /// File path: assets/images/home/home.svg
  SvgGenImage get home => const SvgGenImage('assets/images/home/home.svg');

  /// File path: assets/images/home/mas.svg
  SvgGenImage get mas => const SvgGenImage('assets/images/home/mas.svg');

  /// File path: assets/images/home/menos.svg
  SvgGenImage get menos => const SvgGenImage('assets/images/home/menos.svg');

  /// File path: assets/images/home/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/images/home/menu.svg');

  /// File path: assets/images/home/ofertas.svg
  SvgGenImage get ofertas =>
      const SvgGenImage('assets/images/home/ofertas.svg');

  /// File path: assets/images/home/usuario.svg
  SvgGenImage get usuario =>
      const SvgGenImage('assets/images/home/usuario.svg');

  /// File path: assets/images/home/wishlist.svg
  SvgGenImage get wishlist =>
      const SvgGenImage('assets/images/home/wishlist.svg');

  /// File path: assets/images/home/wishlistFill.svg
  SvgGenImage get wishlistFill =>
      const SvgGenImage('assets/images/home/wishlistFill.svg');

  /// List of all assets
  List<dynamic> get values => [
        iconoMenu,
        banner,
        carrito,
        changeSucursal,
        corazonPng,
        corazonSvg,
        filtro,
        home,
        mas,
        menos,
        menu,
        ofertas,
        usuario,
        wishlist,
        wishlistFill
      ];
}

class $AssetsImagesLoginGen {
  const $AssetsImagesLoginGen();

  /// File path: assets/images/login/facebook.svg
  SvgGenImage get facebook =>
      const SvgGenImage('assets/images/login/facebook.svg');

  /// File path: assets/images/login/ios.svg
  SvgGenImage get ios => const SvgGenImage('assets/images/login/ios.svg');

  /// File path: assets/images/login/isotipo.svg
  SvgGenImage get isotipo =>
      const SvgGenImage('assets/images/login/isotipo.svg');

  /// File path: assets/images/login/isotipo_login.svg
  SvgGenImage get isotipoLogin =>
      const SvgGenImage('assets/images/login/isotipo_login.svg');

  /// File path: assets/images/login/logotipo.svg
  SvgGenImage get logotipo =>
      const SvgGenImage('assets/images/login/logotipo.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [facebook, ios, isotipo, isotipoLogin, logotipo];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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
    String? package = 'la_comer_ui',
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
    String? package = 'la_comer_ui',
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/la_comer_ui/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package = 'la_comer_ui',
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/la_comer_ui/$_assetName';
}
