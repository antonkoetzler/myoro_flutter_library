import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_layout_builder_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroLayoutBuilder].
@immutable
@myoroThemeExtension
class MyoroLayoutBuilderThemeExtension extends ThemeExtension<MyoroLayoutBuilderThemeExtension>
    with _$MyoroLayoutBuilderThemeExtensionMixin {
  const MyoroLayoutBuilderThemeExtension();

  const MyoroLayoutBuilderThemeExtension.fake();

  const MyoroLayoutBuilderThemeExtension.builder();

  @override
  ThemeExtension<MyoroLayoutBuilderThemeExtension> lerp(
    covariant ThemeExtension<MyoroLayoutBuilderThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
