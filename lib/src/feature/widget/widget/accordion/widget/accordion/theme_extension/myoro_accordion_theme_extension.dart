import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_theme_extension.g.dart';

/// [ThemeExtension] of [MyoroAccordion].
@immutable
@myoroThemeExtension
class MyoroAccordionThemeExtension extends ThemeExtension<MyoroAccordionThemeExtension>
    with _$MyoroAccordionThemeExtensionMixin {
  const MyoroAccordionThemeExtension({
    this.thumbVisibility,
    this.itemContentBackgroundColor,
    this.itemContentAnimationDuration,
    this.itemContentAnimationCurve,
    this.itemTitleButtonBorderRadius,
    this.itemTitleButtonContentPadding,
    this.itemTitleButtonSpacing,
    this.itemTitleButtonTitleTextStyle,
    this.itemTitleButtonArrowBackgroundColor,
    this.itemTitleButtonArrowIcon,
    this.itemTitleButtonArrowIconSize,
    this.itemTitleButtonArrowIconColor,
    this.itemTitleButtonArrowBorderRadius,
    this.itemTitleButtonArrowAnimationDuration,
    this.itemTitleButtonArrowAnimationCurve,
  });

  // coverage:ignore-start
  MyoroAccordionThemeExtension.fake()
    : thumbVisibility = faker.randomGenerator.boolean() ? faker.randomGenerator.boolean() : null,
      itemContentBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemContentAnimationDuration = faker.randomGenerator.boolean() ? myoroFake<Duration>() : null,
      itemContentAnimationCurve = faker.randomGenerator.boolean() ? myoroFake<Curve>() : null,
      itemTitleButtonBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      itemTitleButtonContentPadding = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      itemTitleButtonSpacing = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 50) : null,
      itemTitleButtonTitleTextStyle = faker.randomGenerator.boolean() ? myoroFake<TextStyle>() : null,
      itemTitleButtonArrowBackgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemTitleButtonArrowIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      itemTitleButtonArrowIconSize = faker.randomGenerator.boolean()
          ? faker.randomGenerator.decimal(scale: 50, min: 10)
          : null,
      itemTitleButtonArrowIconColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      itemTitleButtonArrowBorderRadius = faker.randomGenerator.boolean() ? myoroFake<BorderRadius>() : null,
      itemTitleButtonArrowAnimationDuration = faker.randomGenerator.boolean() ? myoroFake<Duration>() : null,
      itemTitleButtonArrowAnimationCurve = faker.randomGenerator.boolean() ? myoroFake<Curve>() : null;
  // coverage:ignore-end

  MyoroAccordionThemeExtension.builder(ColorScheme colorScheme, TextTheme textTheme)
    : thumbVisibility = false,
      itemContentBackgroundColor = colorScheme.primary,
      itemContentAnimationDuration = const Duration(milliseconds: 200),
      itemContentAnimationCurve = Curves.easeInOut,
      itemTitleButtonBorderRadius = BorderRadius.zero,
      itemTitleButtonContentPadding = const EdgeInsets.all(10),
      itemTitleButtonSpacing = 10,
      itemTitleButtonTitleTextStyle = textTheme.titleLarge,
      itemTitleButtonArrowBackgroundColor = colorScheme.onPrimary.withValues(alpha: 0.3),
      itemTitleButtonArrowIcon = Icons.keyboard_arrow_down,
      itemTitleButtonArrowIconSize = 25,
      itemTitleButtonArrowIconColor = colorScheme.onPrimary,
      itemTitleButtonArrowBorderRadius = BorderRadius.circular(kMyoroBorderRadiusWidth),
      itemTitleButtonArrowAnimationDuration = const Duration(milliseconds: 250),
      itemTitleButtonArrowAnimationCurve = Curves.easeInOut;

  /// [Scrollbar.thumbVisibility] of the scrollable.
  final bool? thumbVisibility;

  /// Background color of of an item.
  final Color? itemContentBackgroundColor;

  /// [Duration] of the animation of [_ItemContent].
  final Duration? itemContentAnimationDuration;

  /// Animation [Curve] of the animation of [_ItemContent].
  final Curve? itemContentAnimationCurve;

  /// [BorderRadius] of [_ItemTitleButton].
  final BorderRadius? itemTitleButtonBorderRadius;

  /// [EdgeInsets] of [_ItemTitleButton].
  final EdgeInsets? itemTitleButtonContentPadding;

  /// [Row.spacing] of [_ItemTitleButton].
  final double? itemTitleButtonSpacing;

  /// Default [TextStyle] wrapped around the [MyoroAccordionItem.titleBuilder].
  final TextStyle? itemTitleButtonTitleTextStyle;

  /// Background [Color] of an item title button's arrow when
  /// it's being hovered over when said item is selected.
  final Color? itemTitleButtonArrowBackgroundColor;

  /// [IconData] of [_ItemTitleButtonArrow].
  final IconData? itemTitleButtonArrowIcon;

  /// Size of [_ItemTitleButtonArrow].
  final double? itemTitleButtonArrowIconSize;

  /// [Color] of [_ItemTitleButtonArrow].
  final Color? itemTitleButtonArrowIconColor;

  /// [BorderRadius] of [_ItemTitleButtonArrow];
  final BorderRadius? itemTitleButtonArrowBorderRadius;

  /// [Duration] of the rotation animation of [_ItemTitleButtonArrow].
  final Duration? itemTitleButtonArrowAnimationDuration;

  /// [Curve] of the rotation animation of [_ItemTitleButtonArrow].
  final Curve? itemTitleButtonArrowAnimationCurve;

  @override
  MyoroAccordionThemeExtension lerp(covariant ThemeExtension<MyoroAccordionThemeExtension>? other, double t) {
    if (other is! MyoroAccordionThemeExtension) return this;

    final thumbVisibility = myoroLerp(this.thumbVisibility, other.thumbVisibility, t);
    final itemContentBackgroundColor = Color.lerp(this.itemContentBackgroundColor, other.itemContentBackgroundColor, t);
    final itemContentAnimationDuration = myoroLerp(
      this.itemContentAnimationDuration,
      other.itemContentAnimationDuration,
      t,
    );
    final itemContentAnimationCurve = myoroLerp(this.itemContentAnimationCurve, other.itemContentAnimationCurve, t);
    final itemTitleButtonBorderRadius = BorderRadius.lerp(
      this.itemTitleButtonBorderRadius,
      other.itemTitleButtonBorderRadius,
      t,
    );
    final itemTitleButtonContentPadding = EdgeInsets.lerp(
      this.itemTitleButtonContentPadding,
      other.itemTitleButtonContentPadding,
      t,
    );
    final itemTitleButtonSpacing = lerpDouble(this.itemTitleButtonSpacing, other.itemTitleButtonSpacing, t);
    final itemTitleButtonTitleTextStyle = TextStyle.lerp(
      this.itemTitleButtonTitleTextStyle,
      other.itemTitleButtonTitleTextStyle,
      t,
    );
    final itemTitleButtonArrowBackgroundColor = Color.lerp(
      this.itemTitleButtonArrowBackgroundColor,
      other.itemTitleButtonArrowBackgroundColor,
      t,
    );
    final itemTitleButtonArrowIcon = myoroLerp(this.itemTitleButtonArrowIcon, other.itemTitleButtonArrowIcon, t);
    final itemTitleButtonArrowIconSize = lerpDouble(
      this.itemTitleButtonArrowIconSize,
      other.itemTitleButtonArrowIconSize,
      t,
    );
    final itemTitleButtonArrowIconColor = Color.lerp(
      this.itemTitleButtonArrowIconColor,
      other.itemTitleButtonArrowIconColor,
      t,
    );
    final itemTitleButtonArrowBorderRadius = BorderRadius.lerp(
      this.itemTitleButtonArrowBorderRadius,
      other.itemTitleButtonArrowBorderRadius,
      t,
    );
    final itemTitleButtonArrowAnimationDuration = myoroLerp(
      this.itemTitleButtonArrowAnimationDuration,
      other.itemTitleButtonArrowAnimationDuration,
      t,
    );
    final itemTitleButtonArrowAnimationCurve = myoroLerp(
      this.itemTitleButtonArrowAnimationCurve,
      other.itemTitleButtonArrowAnimationCurve,
      t,
    );

    return copyWith(
      thumbVisibility: thumbVisibility ?? this.thumbVisibility,
      thumbVisibilityProvided: thumbVisibility != null,
      itemContentBackgroundColor: itemContentBackgroundColor,
      itemContentBackgroundColorProvided: itemContentBackgroundColor != null,
      itemContentAnimationDuration: itemContentAnimationDuration,
      itemContentAnimationDurationProvided: itemContentAnimationDuration != null,
      itemContentAnimationCurve: itemContentAnimationCurve,
      itemContentAnimationCurveProvided: itemContentAnimationCurve != null,
      itemTitleButtonBorderRadius: itemTitleButtonBorderRadius,
      itemTitleButtonBorderRadiusProvided: itemTitleButtonBorderRadius != null,
      itemTitleButtonContentPadding: itemTitleButtonContentPadding,
      itemTitleButtonContentPaddingProvided: itemTitleButtonContentPadding != null,
      itemTitleButtonSpacing: itemTitleButtonSpacing,
      itemTitleButtonSpacingProvided: itemTitleButtonSpacing != null,
      itemTitleButtonTitleTextStyle: itemTitleButtonTitleTextStyle,
      itemTitleButtonTitleTextStyleProvided: itemTitleButtonTitleTextStyle != null,
      itemTitleButtonArrowBackgroundColor: itemTitleButtonArrowBackgroundColor,
      itemTitleButtonArrowBackgroundColorProvided: itemTitleButtonArrowBackgroundColor != null,
      itemTitleButtonArrowIcon: itemTitleButtonArrowIcon,
      itemTitleButtonArrowIconProvided: itemTitleButtonArrowIcon != null,
      itemTitleButtonArrowIconSize: itemTitleButtonArrowIconSize,
      itemTitleButtonArrowIconSizeProvided: itemTitleButtonArrowIconSize != null,
      itemTitleButtonArrowIconColor: itemTitleButtonArrowIconColor,
      itemTitleButtonArrowIconColorProvided: itemTitleButtonArrowIconColor != null,
      itemTitleButtonArrowBorderRadius: itemTitleButtonArrowBorderRadius,
      itemTitleButtonArrowBorderRadiusProvided: itemTitleButtonArrowBorderRadius != null,
      itemTitleButtonArrowAnimationDuration: itemTitleButtonArrowAnimationDuration,
      itemTitleButtonArrowAnimationDurationProvided: itemTitleButtonArrowAnimationDuration != null,
      itemTitleButtonArrowAnimationCurve: itemTitleButtonArrowAnimationCurve,
      itemTitleButtonArrowAnimationCurveProvided: itemTitleButtonArrowAnimationCurve != null,
    );
  }

  /// [MyoroButtonStyle] of the item title button.
  MyoroButtonStyle get itemTitleButtonStyle {
    return MyoroButtonStyle(
      backgroundColorBuilder: itemContentBackgroundColor != null ? (_) => itemContentBackgroundColor! : null,
    );
  }
}
