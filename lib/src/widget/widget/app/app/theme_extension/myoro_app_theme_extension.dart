import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroApp].
@immutable
@myoroThemeExtension
class MyoroAppThemeExtension extends ThemeExtension<MyoroAppThemeExtension> with _$MyoroAppThemeExtensionMixin {
  const MyoroAppThemeExtension();

  const MyoroAppThemeExtension.builder();

  @override
  ThemeExtension<MyoroAppThemeExtension> lerp(covariant ThemeExtension<MyoroAppThemeExtension>? other, double t) {
    return this;
  }
}
