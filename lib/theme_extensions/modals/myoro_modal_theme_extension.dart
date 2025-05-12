import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroModal].
///
/// TODO: Test needs to be rewritten.
@immutable
class MyoroModalThemeExtension extends ThemeExtension<MyoroModalThemeExtension> {
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
    : primaryColor = kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      borderRadius = BorderRadius.circular(faker.randomGenerator.decimal()),
      border = Border.all(
        width: faker.randomGenerator.decimal(),
        color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
      ),
      padding = EdgeInsets.all(faker.randomGenerator.decimal()),
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
  MyoroModalThemeExtension copyWith({
    Color? primaryColor,
    BorderRadius? borderRadius,
    Border? border,
    EdgeInsets? padding,
    double? spacing,
    TextStyle? titleTextStyle,
    IconData? closeButtonIcon,
    double? closeButtonIconSize,
  }) {
    return MyoroModalThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      borderRadius: borderRadius ?? this.borderRadius,
      border: border ?? this.border,
      padding: padding ?? this.padding,
      spacing: spacing ?? this.spacing,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      closeButtonIcon: closeButtonIcon ?? this.closeButtonIcon,
      closeButtonIconSize: closeButtonIconSize ?? this.closeButtonIconSize,
    );
  }

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

  @override
  bool operator ==(Object other) {
    return other is MyoroModalThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == primaryColor &&
        other.borderRadius == borderRadius &&
        other.border == border &&
        other.padding == padding &&
        other.spacing == spacing &&
        other.titleTextStyle == titleTextStyle &&
        other.closeButtonIcon == closeButtonIcon &&
        other.closeButtonIconSize == closeButtonIconSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      primaryColor,
      borderRadius,
      border,
      padding,
      spacing,
      titleTextStyle,
      closeButtonIcon,
      closeButtonIconSize,
    );
  }

  @override
  String toString() =>
      'MyoroModalThemeExtension(\n'
      '  primaryColor: $primaryColor,\n'
      '  borderRadius: $borderRadius,\n'
      '  border: $border,\n'
      '  padding: $padding,\n'
      '  spacing: $spacing,\n'
      '  titleTextStyle: $titleTextStyle,\n'
      '  closeButtonIcon: $closeButtonIcon,\n'
      '  closeButtonIconSize: $closeButtonIconSize,\n'
      ');';
}
