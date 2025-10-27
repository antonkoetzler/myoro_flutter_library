// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_accordion_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroAccordionThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroAccordionThemeExtension with _$MyoroAccordionThemeExtensionMixin {}
/// ```
mixin _$MyoroAccordionThemeExtensionMixin
    on ThemeExtension<MyoroAccordionThemeExtension> {
  MyoroAccordionThemeExtension get self => this as MyoroAccordionThemeExtension;

  @override
  MyoroAccordionThemeExtension copyWith({
    Color? itemContentBackgroundColor,
    bool itemContentBackgroundColorProvided = true,
    Duration? itemContentAnimationDuration,
    bool itemContentAnimationDurationProvided = true,
    Curve? itemContentAnimationCurve,
    bool itemContentAnimationCurveProvided = true,
    EdgeInsets? itemTitleButtonContentPadding,
    bool itemTitleButtonContentPaddingProvided = true,
    double? itemTitleButtonSpacing,
    bool itemTitleButtonSpacingProvided = true,
    TextStyle? itemTitleButtonTitleTextStyle,
    bool itemTitleButtonTitleTextStyleProvided = true,
    IconData? itemTitleButtonArrowIcon,
    bool itemTitleButtonArrowIconProvided = true,
    Color? itemTitleButtonArrowIconColor,
    bool itemTitleButtonArrowIconColorProvided = true,
    double? itemTitleButtonArrowIconSize,
    bool itemTitleButtonArrowIconSizeProvided = true,
    Duration? itemTitleButtonArrowAnimationDuration,
    bool itemTitleButtonArrowAnimationDurationProvided = true,
    Curve? itemTitleButtonArrowAnimationCurve,
    bool itemTitleButtonArrowAnimationCurveProvided = true,
  }) {
    return MyoroAccordionThemeExtension(
      itemContentBackgroundColor: itemContentBackgroundColorProvided
          ? (itemContentBackgroundColor ?? self.itemContentBackgroundColor)
          : null,
      itemContentAnimationDuration: itemContentAnimationDurationProvided
          ? (itemContentAnimationDuration ?? self.itemContentAnimationDuration)
          : null,
      itemContentAnimationCurve: itemContentAnimationCurveProvided
          ? (itemContentAnimationCurve ?? self.itemContentAnimationCurve)
          : null,
      itemTitleButtonContentPadding: itemTitleButtonContentPaddingProvided
          ? (itemTitleButtonContentPadding ??
                self.itemTitleButtonContentPadding)
          : null,
      itemTitleButtonSpacing: itemTitleButtonSpacingProvided
          ? (itemTitleButtonSpacing ?? self.itemTitleButtonSpacing)
          : null,
      itemTitleButtonTitleTextStyle: itemTitleButtonTitleTextStyleProvided
          ? (itemTitleButtonTitleTextStyle ??
                self.itemTitleButtonTitleTextStyle)
          : null,
      itemTitleButtonArrowIcon: itemTitleButtonArrowIconProvided
          ? (itemTitleButtonArrowIcon ?? self.itemTitleButtonArrowIcon)
          : null,
      itemTitleButtonArrowIconColor: itemTitleButtonArrowIconColorProvided
          ? (itemTitleButtonArrowIconColor ??
                self.itemTitleButtonArrowIconColor)
          : null,
      itemTitleButtonArrowIconSize: itemTitleButtonArrowIconSizeProvided
          ? (itemTitleButtonArrowIconSize ?? self.itemTitleButtonArrowIconSize)
          : null,
      itemTitleButtonArrowAnimationDuration:
          itemTitleButtonArrowAnimationDurationProvided
          ? (itemTitleButtonArrowAnimationDuration ??
                self.itemTitleButtonArrowAnimationDuration)
          : null,
      itemTitleButtonArrowAnimationCurve:
          itemTitleButtonArrowAnimationCurveProvided
          ? (itemTitleButtonArrowAnimationCurve ??
                self.itemTitleButtonArrowAnimationCurve)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAccordionThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemContentBackgroundColor == self.itemContentBackgroundColor &&
        other.itemContentAnimationDuration ==
            self.itemContentAnimationDuration &&
        other.itemContentAnimationCurve == self.itemContentAnimationCurve &&
        other.itemTitleButtonContentPadding ==
            self.itemTitleButtonContentPadding &&
        other.itemTitleButtonSpacing == self.itemTitleButtonSpacing &&
        other.itemTitleButtonTitleTextStyle ==
            self.itemTitleButtonTitleTextStyle &&
        other.itemTitleButtonArrowIcon == self.itemTitleButtonArrowIcon &&
        other.itemTitleButtonArrowIconColor ==
            self.itemTitleButtonArrowIconColor &&
        other.itemTitleButtonArrowIconSize ==
            self.itemTitleButtonArrowIconSize &&
        other.itemTitleButtonArrowAnimationDuration ==
            self.itemTitleButtonArrowAnimationDuration &&
        other.itemTitleButtonArrowAnimationCurve ==
            self.itemTitleButtonArrowAnimationCurve;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.itemContentBackgroundColor,
      self.itemContentAnimationDuration,
      self.itemContentAnimationCurve,
      self.itemTitleButtonContentPadding,
      self.itemTitleButtonSpacing,
      self.itemTitleButtonTitleTextStyle,
      self.itemTitleButtonArrowIcon,
      self.itemTitleButtonArrowIconColor,
      self.itemTitleButtonArrowIconSize,
      self.itemTitleButtonArrowAnimationDuration,
      self.itemTitleButtonArrowAnimationCurve,
    );
  }

  @override
  String toString() =>
      'MyoroAccordionThemeExtension(\n'
      '  itemContentBackgroundColor: ${self.itemContentBackgroundColor},\n'
      '  itemContentAnimationDuration: ${self.itemContentAnimationDuration},\n'
      '  itemContentAnimationCurve: ${self.itemContentAnimationCurve},\n'
      '  itemTitleButtonContentPadding: ${self.itemTitleButtonContentPadding},\n'
      '  itemTitleButtonSpacing: ${self.itemTitleButtonSpacing},\n'
      '  itemTitleButtonTitleTextStyle: ${self.itemTitleButtonTitleTextStyle},\n'
      '  itemTitleButtonArrowIcon: ${self.itemTitleButtonArrowIcon},\n'
      '  itemTitleButtonArrowIconColor: ${self.itemTitleButtonArrowIconColor},\n'
      '  itemTitleButtonArrowIconSize: ${self.itemTitleButtonArrowIconSize},\n'
      '  itemTitleButtonArrowAnimationDuration: ${self.itemTitleButtonArrowAnimationDuration},\n'
      '  itemTitleButtonArrowAnimationCurve: ${self.itemTitleButtonArrowAnimationCurve},\n'
      ');';
}
