import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [ThemeExtension] for [MyoroModal].
final class MyoroModalThemeExtension
    extends ThemeExtension<MyoroModalThemeExtension> {
  /// Background color of the modal.
  final Color primaryColor;

  /// Border radius of the modal.
  final BorderRadius borderRadius;

  /// Border of the modal.
  final Border border;

  /// Padding of everything in the modal.
  final EdgeInsets padding;

  /// Constraints of the modal.
  final BoxConstraints constraints;

  /// Spacing between the [_Header] and the contents of the modal.
  final double spacing;

  /// Text style of [_Title].
  final TextStyle titleTextStyle;

  /// Icon of [_CloseButton].
  final IconData closeButtonIcon;

  const MyoroModalThemeExtension({
    required this.primaryColor,
    required this.borderRadius,
    required this.border,
    required this.padding,
    required this.constraints,
    required this.spacing,
    required this.titleTextStyle,
    required this.closeButtonIcon,
  });

  factory MyoroModalThemeExtension.fake() {
    final maxWidth = faker.randomGenerator.decimal();
    final maxHeight = faker.randomGenerator.decimal();

    return MyoroModalThemeExtension(
      primaryColor:
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      borderRadius: BorderRadius.circular(faker.randomGenerator.decimal()),
      border: Border.all(
        width: faker.randomGenerator.decimal(),
        color:
            kMyoroTestColors[faker.randomGenerator.integer(
              kMyoroTestColors.length,
            )],
      ),
      padding: EdgeInsets.all(faker.randomGenerator.decimal()),
      constraints: BoxConstraints(
        minWidth: faker.randomGenerator.integer(maxWidth.toInt()).toDouble(),
        minHeight: faker.randomGenerator.integer(maxHeight.toInt()).toDouble(),
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      ),
      spacing: faker.randomGenerator.decimal(),
      titleTextStyle: MyoroTypographyDesignSystem.instance.randomTextStyle,
      closeButtonIcon:
          kMyoroTestIcons[faker.randomGenerator.integer(
            kMyoroTestIcons.length,
          )],
    );
  }

  factory MyoroModalThemeExtension.builder(
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    const width = 300.0;
    const height = 400.0;

    return MyoroModalThemeExtension(
      primaryColor: colorScheme.primary,
      borderRadius: MyoroDecorationHelper.borderRadius,
      border: Border.all(
        width: kMyoroBorderLength,
        color: colorScheme.onPrimary,
      ),
      padding: const EdgeInsets.all(5),
      constraints: const BoxConstraints(
        minWidth: width,
        minHeight: height,
        maxWidth: width,
        maxHeight: height,
      ),
      spacing: 10,
      titleTextStyle: textTheme.titleSmall!,
      closeButtonIcon: Icons.close,
    );
  }

  @override
  MyoroModalThemeExtension copyWith({
    Color? primaryColor,
    BorderRadius? borderRadius,
    Border? border,
    EdgeInsets? padding,
    BoxConstraints? constraints,
    double? spacing,
    TextStyle? titleTextStyle,
    IconData? closeButtonIcon,
  }) {
    return MyoroModalThemeExtension(
      primaryColor: primaryColor ?? this.primaryColor,
      borderRadius: borderRadius ?? this.borderRadius,
      border: border ?? this.border,
      padding: padding ?? this.padding,
      constraints: constraints ?? this.constraints,
      spacing: spacing ?? this.spacing,
      titleTextStyle: titleTextStyle ?? this.titleTextStyle,
      closeButtonIcon: closeButtonIcon ?? this.closeButtonIcon,
    );
  }

  @override
  MyoroModalThemeExtension lerp(
    covariant ThemeExtension<MyoroModalThemeExtension>? other,
    double t,
  ) {
    if (other is! MyoroModalThemeExtension) return this;
    return copyWith(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t),
      border: Border.lerp(border, other.border, t),
      padding: EdgeInsets.lerp(padding, other.padding, t),
      constraints: BoxConstraints.lerp(constraints, other.constraints, t),
      spacing: lerpDouble(spacing, other.spacing, t),
      titleTextStyle: TextStyle.lerp(titleTextStyle, other.titleTextStyle, t),
      closeButtonIcon: myoroLerp(closeButtonIcon, other.closeButtonIcon, t),
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
        other.constraints == constraints &&
        other.spacing == spacing &&
        other.titleTextStyle == titleTextStyle &&
        other.closeButtonIcon == closeButtonIcon;
  }

  @override
  int get hashCode {
    return Object.hash(
      primaryColor,
      borderRadius,
      border,
      padding,
      constraints,
      spacing,
      titleTextStyle,
      closeButtonIcon,
    );
  }
}
