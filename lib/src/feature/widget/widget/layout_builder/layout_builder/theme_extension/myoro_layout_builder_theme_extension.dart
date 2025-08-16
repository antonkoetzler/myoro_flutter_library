import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';

part 'myoro_layout_builder_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroLayoutBuilder].
@immutable
@myoroThemeExtension
class MyoroLayoutBuilderThemeExtension extends ThemeExtension<MyoroLayoutBuilderThemeExtension>
    with _$MyoroLayoutBuilderThemeExtensionMixin {
  // coverage:ignore-start
  const MyoroLayoutBuilderThemeExtension();
  // coverage:ignore-end

  // coverage:ignore-start
  const MyoroLayoutBuilderThemeExtension.fake();
  // coverage:ignore-end

  const MyoroLayoutBuilderThemeExtension.builder();

  @override
  ThemeExtension<MyoroLayoutBuilderThemeExtension> lerp(
    covariant ThemeExtension<MyoroLayoutBuilderThemeExtension>? other,
    double t,
  ) {
    return this;
  }
}
