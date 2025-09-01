import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_bar_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroAppBar].
@immutable
@myoroThemeExtension
class MyoroAppBarThemeExtension extends ThemeExtension<MyoroAppBarThemeExtension>
    with _$MyoroAppBarThemeExtensionMixin {
  const MyoroAppBarThemeExtension({this.bordered, this.backgroundColor, this.contentPadding});

  // coverage:ignore-start
  MyoroAppBarThemeExtension.fake()
    : bordered = faker.randomGenerator.boolean() ? faker.randomGenerator.boolean() : null,
      backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      contentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null;
  // coverage:ignore-end

  MyoroAppBarThemeExtension.builder(ColorScheme colorScheme)
    : bordered = false,
      backgroundColor = colorScheme.primary,
      contentPadding = const EdgeInsets.all(10);

  /// If there is a border under the app bar.
  final bool? bordered;

  /// Background [Color] of the app bar.
  final Color? backgroundColor;

  /// [EdgeInsets] of the contents of the [MyoroAppBar], not it's bottom border.
  final EdgeInsets? contentPadding;

  @override
  MyoroAppBarThemeExtension lerp(covariant ThemeExtension<MyoroAppBarThemeExtension>? other, double t) {
    if (other is! MyoroAppBarThemeExtension) return this;

    final bordered = myoroLerp(this.bordered, other.bordered, t);
    final backgroundColor = Color.lerp(this.backgroundColor, other.backgroundColor, t);
    final contentPadding = EdgeInsets.lerp(this.contentPadding, other.contentPadding, t);

    return copyWith(
      bordered: bordered ?? this.bordered,
      borderedProvided: bordered != null,
      backgroundColor: backgroundColor,
      backgroundColorProvided: backgroundColor != null,
      contentPadding: contentPadding,
      contentPaddingProvided: contentPadding != null,
    );
  }
}
