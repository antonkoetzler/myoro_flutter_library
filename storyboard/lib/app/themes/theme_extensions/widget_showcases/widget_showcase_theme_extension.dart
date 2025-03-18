import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [WidgetShowcase].
final class WidgetShowcaseThemeExtension
    extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// [Color] of [_WidgetWrapper].
  final Color widgetWrapperBackgroundColor;

  /// [EdgeInsets] of [_WidgetWrapper].
  final EdgeInsets widgetWrapperPadding;

  /// [EdgeInsets] of the content in [_WidgetWrapper].
  final EdgeInsets widgetWrapperContentPadding;

  /// Border radius [_WidgetWrapper].
  final BorderRadius widgetWrapperBorderRadius;

  /// Border of [_WidgetWrapper].
  final Border widgetWrapperBorder;

  /// Alignment of [_WidgetWrapper].
  final Alignment widgetWrapperAlignment;

  /// Padding of [_WidgetOptions].
  final EdgeInsets widgetOptionsPadding;

  /// Spacing of items in [_WidgetOptions].
  final EdgeInsets widgetOptionsDividerPadding;

  const WidgetShowcaseThemeExtension({
    required this.widgetWrapperBackgroundColor,
    required this.widgetWrapperPadding,
    required this.widgetWrapperContentPadding,
    required this.widgetWrapperBorderRadius,
    required this.widgetWrapperBorder,
    required this.widgetWrapperAlignment,
    required this.widgetOptionsPadding,
    required this.widgetOptionsDividerPadding,
  });

  WidgetShowcaseThemeExtension.fake()
    : widgetWrapperBackgroundColor =
          kMyoroTestColors[faker.randomGenerator.integer(
            kMyoroTestColors.length,
          )],
      widgetWrapperPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      widgetWrapperContentPadding = EdgeInsets.all(
        faker.randomGenerator.decimal(),
      ),
      widgetWrapperBorderRadius = BorderRadius.circular(
        faker.randomGenerator.decimal(),
      ),
      widgetWrapperBorder = Border.all(
        width: faker.randomGenerator.decimal(),
        color:
            kMyoroTestColors[faker.randomGenerator.integer(
              kMyoroTestColors.length,
            )],
      ),
      widgetWrapperAlignment =
          [
            Alignment.center,
            Alignment.topLeft,
            Alignment.topRight,
            Alignment.topCenter,
            Alignment.centerLeft,
            Alignment.bottomLeft,
            Alignment.centerRight,
            Alignment.bottomRight,
            Alignment.bottomCenter,
          ][faker.randomGenerator.integer(9)],
      widgetOptionsPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      widgetOptionsDividerPadding = EdgeInsets.all(
        faker.randomGenerator.decimal(),
      );

  @override
  WidgetShowcaseThemeExtension copyWith({
    Color? widgetWrapperBackgroundColor,
    EdgeInsets? widgetWrapperPadding,
    EdgeInsets? widgetWrapperContentPadding,
    BorderRadius? widgetWrapperBorderRadius,
    Border? widgetWrapperBorder,
    Alignment? widgetWrapperAlignment,
    EdgeInsets? widgetOptionsPadding,
    EdgeInsets? widgetOptionsDividerPadding,
  }) {
    return WidgetShowcaseThemeExtension(
      widgetWrapperBackgroundColor:
          widgetWrapperBackgroundColor ?? this.widgetWrapperBackgroundColor,
      widgetWrapperPadding: widgetWrapperPadding ?? this.widgetWrapperPadding,
      widgetWrapperContentPadding:
          widgetWrapperContentPadding ?? this.widgetWrapperContentPadding,
      widgetWrapperBorderRadius:
          widgetWrapperBorderRadius ?? this.widgetWrapperBorderRadius,
      widgetWrapperBorder: widgetWrapperBorder ?? this.widgetWrapperBorder,
      widgetWrapperAlignment:
          widgetWrapperAlignment ?? this.widgetWrapperAlignment,
      widgetOptionsPadding: widgetOptionsPadding ?? this.widgetOptionsPadding,
      widgetOptionsDividerPadding:
          widgetOptionsDividerPadding ?? this.widgetOptionsDividerPadding,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetWrapperBackgroundColor: Color.lerp(
        widgetWrapperBackgroundColor,
        other.widgetWrapperBackgroundColor,
        t,
      ),
      widgetWrapperPadding: EdgeInsets.lerp(
        widgetWrapperPadding,
        other.widgetWrapperPadding,
        t,
      ),
      widgetWrapperContentPadding: EdgeInsets.lerp(
        widgetWrapperContentPadding,
        other.widgetWrapperContentPadding,
        t,
      ),
      widgetWrapperBorderRadius: BorderRadius.lerp(
        widgetWrapperBorderRadius,
        other.widgetWrapperBorderRadius,
        t,
      ),
      widgetWrapperBorder: Border.lerp(
        widgetWrapperBorder,
        other.widgetWrapperBorder,
        t,
      ),
      widgetWrapperAlignment: Alignment.lerp(
        widgetWrapperAlignment,
        other.widgetWrapperAlignment,
        t,
      ),
      widgetOptionsPadding: EdgeInsets.lerp(
        widgetOptionsPadding,
        other.widgetOptionsPadding,
        t,
      ),
      widgetOptionsDividerPadding: EdgeInsets.lerp(
        widgetOptionsDividerPadding,
        other.widgetOptionsDividerPadding,
        t,
      ),
    );
  }
}
