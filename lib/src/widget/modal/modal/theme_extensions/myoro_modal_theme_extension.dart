import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_modal_theme_extension.g.dart';

/// [ThemeExtension] for [MyoroModal].
@immutable
@myoroThemeExtension
class MyoroModalThemeExtension extends ThemeExtension<MyoroModalThemeExtension> with _$MyoroModalThemeExtensionMixin {
  /// Background color of the modal.
  final Color primaryColor;

  /// Border radius of the modal.
  final BorderRadius borderRadius;

  /// Border of the modal.
  final Border border;

  /// Padding of everything in the modal.
  final EdgeInsets padding;

  /// Spacing between the [_Header] and the contents of the modal.
  final double spacing;

  /// Text style of [_Title].
  final TextStyle titleTextStyle;

  /// Icon of [_CloseButton].
  final IconData closeButtonIcon;

  /// Size of the icon of [_CloseButton].
  final double closeButtonIconSize;

  const MyoroModalThemeExtension({
    required this.primaryColor,
    required this.borderRadius,
    required this.border,
    required this.padding,
    required this.spacing,
    required this.titleTextStyle,
    required this.closeButtonIcon,
    required this.closeButtonIconSize,
  });

  MyoroModalThemeExtension.fake()
    : primaryColor = myoroFake<Color>(),
      borderRadius = myoroFake<BorderRadius>(),
      border = myoroFake<Border>(),
      padding = myoroFake<EdgeInsets>(),
      spacing = faker.randomGenerator.decimal(),
      titleTextStyle = MyoroTypographyDesignSystem.instance.randomTextStyle,
      closeButtonIcon = myoroFake<IconData>(),
      closeButtonIconSize = faker.randomGenerator.decimal(scale: 100);

  MyoroModalThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : primaryColor = colorScheme.primary,
      borderRadius = BorderRadius.circular(kMyoroBorderRadiusLength),
      border = Border.all(width: kMyoroBorderLength, color: colorScheme.onPrimary),
      padding = const EdgeInsets.all(5),
      spacing = 10,
      titleTextStyle = textTheme.titleSmall!,
      closeButtonIcon = Icons.close,
      closeButtonIconSize = 20;

  @override
  MyoroModalThemeExtension lerp(covariant ThemeExtension<MyoroModalThemeExtension>? other, double t) {
    if (other is! MyoroModalThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      border: Border.lerp(border, other.border, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      closeButtonIcon: myoroLerp(closeButtonIcon, other.closeButtonIcon, t),
      closeButtonIconSize: lerpDouble(closeButtonIconSize, other.closeButtonIconSize, t),
    );
  }
}
