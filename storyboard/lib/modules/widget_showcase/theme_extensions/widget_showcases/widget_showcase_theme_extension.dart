import 'dart:ui';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [ThemeExtension] for [WidgetShowcase].
@immutable
final class WidgetShowcaseThemeExtension extends ThemeExtension<WidgetShowcaseThemeExtension> {
  /// [BoxDecoration] of [_WidgetWrapper].
  final BoxDecoration widgetWrapperDecoration;

  /// [EdgeInsets] of [_WidgetWrapper].
  final EdgeInsets widgetWrapperPadding;

  /// [EdgeInsets] of the content in [_WidgetWrapper].
  final EdgeInsets widgetWrapperContentPadding;

  /// Alignment of [_WidgetWrapper].
  final Alignment widgetWrapperAlignment;

  //// [MyoroIconTextButtonIconConfiguration.icon] of [_PreviousPageButton].
  final IconData previousPageButtonIcon;

  /// [MyoroIconTextButtonIconConfiguration.padding] of [_PreviousPageButton].
  final EdgeInsets previousPageButtonPadding;

  /// Offset of [_PreviousPageButton]'s [Positioned].
  final double previousPageButtonOffset;

  /// [BoxConstraints.maxWidth] of [_WidgetOptions].
  final double widgetOptionsMaxWidth;

  /// Padding of [_WidgetOptions].
  final EdgeInsets widgetOptionsPadding;

  /// Spacing of items in [_WidgetOptions].
  final EdgeInsets widgetOptionsDividerPadding;

  const WidgetShowcaseThemeExtension({
    required this.widgetWrapperDecoration,
    required this.widgetWrapperPadding,
    required this.widgetWrapperContentPadding,
    required this.widgetWrapperAlignment,
    required this.previousPageButtonIcon,
    required this.previousPageButtonPadding,
    required this.previousPageButtonOffset,
    required this.widgetOptionsMaxWidth,
    required this.widgetOptionsPadding,
    required this.widgetOptionsDividerPadding,
  });

  WidgetShowcaseThemeExtension.fake()
    : widgetWrapperDecoration = BoxDecoration(
        color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        border: Border.all(
          width: faker.randomGenerator.decimal(),
          color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
        ),
        borderRadius: BorderRadius.circular(faker.randomGenerator.decimal()),
      ),
      widgetWrapperPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      widgetWrapperContentPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
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
      previousPageButtonIcon =
          kMyoroTestIcons[faker.randomGenerator.integer(kMyoroTestIcons.length)],
      previousPageButtonPadding = EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      previousPageButtonOffset = faker.randomGenerator.decimal(scale: 50),
      widgetOptionsMaxWidth = faker.randomGenerator.decimal(min: 200),
      widgetOptionsPadding = EdgeInsets.all(faker.randomGenerator.decimal()),
      widgetOptionsDividerPadding = EdgeInsets.all(faker.randomGenerator.decimal());

  WidgetShowcaseThemeExtension.builder(ColorScheme colorScheme)
    : widgetWrapperDecoration = BoxDecoration(
        color: MyoroColorDesignSystem.attention.withValues(alpha: 0.1),
        border: Border.all(width: kMyoroBorderLength, color: MyoroColorDesignSystem.attention),

        borderRadius: BorderRadius.circular(kMyoroBorderRadiusLength),
      ),
      widgetWrapperPadding = const EdgeInsets.all(20),
      widgetWrapperContentPadding = const EdgeInsets.all(20),
      widgetWrapperAlignment = Alignment.center,
      previousPageButtonIcon = Icons.keyboard_arrow_left,
      previousPageButtonPadding = const EdgeInsets.all(3),
      previousPageButtonOffset = 15,
      widgetOptionsMaxWidth = 500,
      widgetOptionsPadding = const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      widgetOptionsDividerPadding = const EdgeInsets.symmetric(vertical: 20, horizontal: 12);

  @override
  WidgetShowcaseThemeExtension copyWith({
    BoxDecoration? widgetWrapperDecoration,
    EdgeInsets? widgetWrapperPadding,
    EdgeInsets? widgetWrapperContentPadding,
    Alignment? widgetWrapperAlignment,
    IconData? previousPageButtonIcon,
    EdgeInsets? previousPageButtonPadding,
    double? previousPageButtonOffset,
    double? widgetOptionsMaxWidth,
    EdgeInsets? widgetOptionsPadding,
    EdgeInsets? widgetOptionsDividerPadding,
  }) {
    return WidgetShowcaseThemeExtension(
      widgetWrapperDecoration: widgetWrapperDecoration ?? this.widgetWrapperDecoration,
      widgetWrapperPadding: widgetWrapperPadding ?? this.widgetWrapperPadding,
      widgetWrapperContentPadding: widgetWrapperContentPadding ?? this.widgetWrapperContentPadding,
      widgetWrapperAlignment: widgetWrapperAlignment ?? this.widgetWrapperAlignment,
      previousPageButtonIcon: previousPageButtonIcon ?? this.previousPageButtonIcon,
      previousPageButtonPadding: previousPageButtonPadding ?? this.previousPageButtonPadding,
      previousPageButtonOffset: previousPageButtonOffset ?? this.previousPageButtonOffset,
      widgetOptionsMaxWidth: widgetOptionsMaxWidth ?? this.widgetOptionsMaxWidth,
      widgetOptionsPadding: widgetOptionsPadding ?? this.widgetOptionsPadding,
      widgetOptionsDividerPadding: widgetOptionsDividerPadding ?? this.widgetOptionsDividerPadding,
    );
  }

  @override
  WidgetShowcaseThemeExtension lerp(
    covariant ThemeExtension<WidgetShowcaseThemeExtension>? other,
    double t,
  ) {
    if (other is! WidgetShowcaseThemeExtension) return this;
    return copyWith(
      widgetWrapperDecoration: BoxDecoration.lerp(
        widgetWrapperDecoration,
        other.widgetWrapperDecoration,
        t,
      ),
      widgetWrapperPadding: EdgeInsets.lerp(widgetWrapperPadding, other.widgetWrapperPadding, t),
      widgetWrapperContentPadding: EdgeInsets.lerp(
        widgetWrapperContentPadding,
        other.widgetWrapperContentPadding,
        t,
      ),
      widgetWrapperAlignment: Alignment.lerp(
        widgetWrapperAlignment,
        other.widgetWrapperAlignment,
        t,
      ),
      previousPageButtonIcon: myoroLerp(previousPageButtonIcon, other.previousPageButtonIcon, t),
      previousPageButtonPadding: EdgeInsets.lerp(
        previousPageButtonPadding,
        other.previousPageButtonPadding,
        t,
      ),
      previousPageButtonOffset: lerpDouble(
        previousPageButtonOffset,
        other.previousPageButtonOffset,
        t,
      ),
      widgetOptionsMaxWidth: lerpDouble(widgetOptionsMaxWidth, other.widgetOptionsMaxWidth, t),
      widgetOptionsPadding: EdgeInsets.lerp(widgetOptionsPadding, other.widgetOptionsPadding, t),
      widgetOptionsDividerPadding: EdgeInsets.lerp(
        widgetOptionsDividerPadding,
        other.widgetOptionsDividerPadding,
        t,
      ),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WidgetShowcaseThemeExtension &&
        other.runtimeType == runtimeType &&
        other.widgetWrapperDecoration == widgetWrapperDecoration &&
        other.widgetWrapperPadding == widgetWrapperPadding &&
        other.widgetWrapperContentPadding == widgetWrapperContentPadding &&
        other.widgetWrapperAlignment == widgetWrapperAlignment &&
        other.previousPageButtonIcon == previousPageButtonIcon &&
        other.previousPageButtonPadding == previousPageButtonPadding &&
        other.previousPageButtonOffset == previousPageButtonOffset &&
        other.widgetOptionsMaxWidth == widgetOptionsMaxWidth &&
        other.widgetOptionsPadding == widgetOptionsPadding &&
        other.widgetOptionsDividerPadding == widgetOptionsDividerPadding;
  }

  @override
  int get hashCode {
    return Object.hash(
      widgetWrapperDecoration,
      widgetWrapperPadding,
      widgetWrapperContentPadding,
      widgetWrapperAlignment,
      previousPageButtonIcon,
      previousPageButtonPadding,
      previousPageButtonOffset,
      widgetOptionsMaxWidth,
      widgetOptionsPadding,
      widgetOptionsDividerPadding,
    );
  }

  @override
  String toString() =>
      'WidgetShowcaseThemeExtension(\n'
      '  widgetWrapperPadding: $widgetWrapperPadding,\n'
      '  widgetWrapperContentPadding: $widgetWrapperContentPadding,\n'
      '  widgetWrapperAlignment: $widgetWrapperAlignment,\n'
      '  previousPageButtonIcon: $previousPageButtonIcon,\n'
      '  previousPageButtonPadding: $previousPageButtonPadding,\n'
      '  previousPageButtonOffset: $previousPageButtonOffset,\n'
      '  widgetOptionsMaxWidth: $widgetOptionsMaxWidth,\n'
      '  widgetOptionsPadding: $widgetOptionsPadding,\n'
      '  widgetOptionsDividerPadding: $widgetOptionsDividerPadding,\n'
      ');';
}
