import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_form_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroForm].
@immutable
@myoroThemeExtension
class MyoroFormThemeExtension extends ThemeExtension<MyoroFormThemeExtension> with _$MyoroFormThemeExtensionMixin {
  const MyoroFormThemeExtension();

  // coverage:ignore-start
  const MyoroFormThemeExtension.fake();
  // coverage:ignore-end

  const MyoroFormThemeExtension.builder();

  @override
  ThemeExtension<MyoroFormThemeExtension> lerp(covariant ThemeExtension<MyoroFormThemeExtension>? other, double t) {
    return this;
  }
}
