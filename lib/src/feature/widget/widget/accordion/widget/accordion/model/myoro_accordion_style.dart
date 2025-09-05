import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_accordion_style.g.dart';

/// Style model of [MyoroAccordion].
@immutable
@myoroModel
final class MyoroAccordionStyle
    with _$MyoroAccordionStyleMixin
    implements MyoroAccordionStyleProperties {
  static const thumbVisibilityDefaultValue = false;

  const MyoroAccordionStyle({
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

  @override
  final bool? thumbVisibility;

  @override
  final Color? itemContentBackgroundColor;

  @override
  final Duration? itemContentAnimationDuration;

  @override
  final Curve? itemContentAnimationCurve;

  @override
  final BorderRadius? itemTitleButtonBorderRadius;

  @override
  final EdgeInsets? itemTitleButtonContentPadding;

  @override
  final double? itemTitleButtonSpacing;

  @override
  final TextStyle? itemTitleButtonTitleTextStyle;

  @override
  final Color? itemTitleButtonArrowBackgroundColor;

  @override
  final IconData? itemTitleButtonArrowIcon;

  @override
  final double? itemTitleButtonArrowIconSize;

  @override
  final Color? itemTitleButtonArrowIconColor;

  @override
  final BorderRadius? itemTitleButtonArrowBorderRadius;

  @override
  final Duration? itemTitleButtonArrowAnimationDuration;

  @override
  final Curve? itemTitleButtonArrowAnimationCurve;

  /// Copy with.
  MyoroAccordionStyle copyWith({
    bool? thumbVisibility,
    bool thumbVisibilityProvided = true,
    Color? itemContentBackgroundColor,
    bool itemContentBackgroundColorProvided = true,
    Duration? itemContentAnimationDuration,
    bool itemContentAnimationDurationProvided = true,
    Curve? itemContentAnimationCurve,
    bool itemContentAnimationCurveProvided = true,
    BorderRadius? itemTitleButtonBorderRadius,
    bool itemTitleButtonBorderRadiusProvided = true,
    EdgeInsets? itemTitleButtonContentPadding,
    bool itemTitleButtonContentPaddingProvided = true,
    double? itemTitleButtonSpacing,
    bool itemTitleButtonSpacingProvided = true,
    TextStyle? itemTitleButtonTitleTextStyle,
    bool itemTitleButtonTitleTextStyleProvided = true,
    Color? itemTitleButtonArrowBackgroundColor,
    bool itemTitleButtonArrowBackgroundColorProvided = true,
    IconData? itemTitleButtonArrowIcon,
    bool itemTitleButtonArrowIconProvided = true,
    double? itemTitleButtonArrowIconSize,
    bool itemTitleButtonArrowIconSizeProvided = true,
    Color? itemTitleButtonArrowIconColor,
    bool itemTitleButtonArrowIconColorProvided = true,
    BorderRadius? itemTitleButtonArrowBorderRadius,
    bool itemTitleButtonArrowBorderRadiusProvided = true,
    Duration? itemTitleButtonArrowAnimationDuration,
    bool itemTitleButtonArrowAnimationDurationProvided = true,
    Curve? itemTitleButtonArrowAnimationCurve,
    bool itemTitleButtonArrowAnimationCurveProvided = true,
  }) {
    return MyoroAccordionStyle(
      thumbVisibility: thumbVisibilityProvided ? (thumbVisibility ?? this.thumbVisibility) : null,
      itemContentBackgroundColor: itemContentBackgroundColorProvided
          ? (itemContentBackgroundColor ?? this.itemContentBackgroundColor)
          : null,
      itemContentAnimationDuration: itemContentAnimationDurationProvided
          ? (itemContentAnimationDuration ?? this.itemContentAnimationDuration)
          : null,
      itemContentAnimationCurve: itemContentAnimationCurveProvided
          ? (itemContentAnimationCurve ?? this.itemContentAnimationCurve)
          : null,
      itemTitleButtonBorderRadius: itemTitleButtonBorderRadiusProvided
          ? (itemTitleButtonBorderRadius ?? this.itemTitleButtonBorderRadius)
          : null,
      itemTitleButtonContentPadding: itemTitleButtonContentPaddingProvided
          ? (itemTitleButtonContentPadding ?? this.itemTitleButtonContentPadding)
          : null,
      itemTitleButtonSpacing: itemTitleButtonSpacingProvided
          ? (itemTitleButtonSpacing ?? this.itemTitleButtonSpacing)
          : null,
      itemTitleButtonTitleTextStyle: itemTitleButtonTitleTextStyleProvided
          ? (itemTitleButtonTitleTextStyle ?? this.itemTitleButtonTitleTextStyle)
          : null,
      itemTitleButtonArrowBackgroundColor: itemTitleButtonArrowBackgroundColorProvided
          ? (itemTitleButtonArrowBackgroundColor ?? this.itemTitleButtonArrowBackgroundColor)
          : null,
      itemTitleButtonArrowIcon: itemTitleButtonArrowIconProvided
          ? (itemTitleButtonArrowIcon ?? this.itemTitleButtonArrowIcon)
          : null,
      itemTitleButtonArrowIconSize: itemTitleButtonArrowIconSizeProvided
          ? (itemTitleButtonArrowIconSize ?? this.itemTitleButtonArrowIconSize)
          : null,
      itemTitleButtonArrowIconColor: itemTitleButtonArrowIconColorProvided
          ? (itemTitleButtonArrowIconColor ?? this.itemTitleButtonArrowIconColor)
          : null,
      itemTitleButtonArrowBorderRadius: itemTitleButtonArrowBorderRadiusProvided
          ? (itemTitleButtonArrowBorderRadius ?? this.itemTitleButtonArrowBorderRadius)
          : null,
      itemTitleButtonArrowAnimationDuration: itemTitleButtonArrowAnimationDurationProvided
          ? (itemTitleButtonArrowAnimationDuration ?? this.itemTitleButtonArrowAnimationDuration)
          : null,
      itemTitleButtonArrowAnimationCurve: itemTitleButtonArrowAnimationCurveProvided
          ? (itemTitleButtonArrowAnimationCurve ?? this.itemTitleButtonArrowAnimationCurve)
          : null,
    );
  }
}
