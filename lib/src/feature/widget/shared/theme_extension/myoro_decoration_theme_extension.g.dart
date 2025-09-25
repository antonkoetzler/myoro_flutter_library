// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_decoration_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDecorationThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDecorationThemeExtension with _$MyoroDecorationThemeExtensionMixin {}
/// ```
mixin _$MyoroDecorationThemeExtensionMixin on ThemeExtension<MyoroDecorationThemeExtension> {
  MyoroDecorationThemeExtension get self => this as MyoroDecorationThemeExtension;

  @override
  MyoroDecorationThemeExtension copyWith({
    Color? primaryIdleBackgroundColor,
    bool primaryIdleBackgroundColorProvided = true,
    Color? primaryHoverBackgroundColor,
    bool primaryHoverBackgroundColorProvided = true,
    Color? primaryTapBackgroundColor,
    bool primaryTapBackgroundColorProvided = true,
    Color? secondaryIdleBackgroundColor,
    bool secondaryIdleBackgroundColorProvided = true,
    Color? secondaryHoverBackgroundColor,
    bool secondaryHoverBackgroundColorProvided = true,
    Color? secondaryTapBackgroundColor,
    bool secondaryTapBackgroundColorProvided = true,
    Color? primaryContentColor,
    bool primaryContentColorProvided = true,
    Color? secondaryContentColor,
    bool secondaryContentColorProvided = true,
    double? borderWidth,
    bool borderWidthProvided = true,
    Color? borderColor,
    bool borderColorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
  }) {
    return MyoroDecorationThemeExtension(
      primaryIdleBackgroundColor: primaryIdleBackgroundColorProvided
          ? (primaryIdleBackgroundColor ?? self.primaryIdleBackgroundColor)
          : null,
      primaryHoverBackgroundColor: primaryHoverBackgroundColorProvided
          ? (primaryHoverBackgroundColor ?? self.primaryHoverBackgroundColor)
          : null,
      primaryTapBackgroundColor: primaryTapBackgroundColorProvided
          ? (primaryTapBackgroundColor ?? self.primaryTapBackgroundColor)
          : null,
      secondaryIdleBackgroundColor: secondaryIdleBackgroundColorProvided
          ? (secondaryIdleBackgroundColor ?? self.secondaryIdleBackgroundColor)
          : null,
      secondaryHoverBackgroundColor: secondaryHoverBackgroundColorProvided
          ? (secondaryHoverBackgroundColor ?? self.secondaryHoverBackgroundColor)
          : null,
      secondaryTapBackgroundColor: secondaryTapBackgroundColorProvided
          ? (secondaryTapBackgroundColor ?? self.secondaryTapBackgroundColor)
          : null,
      primaryContentColor: primaryContentColorProvided ? (primaryContentColor ?? self.primaryContentColor) : null,
      secondaryContentColor: secondaryContentColorProvided
          ? (secondaryContentColor ?? self.secondaryContentColor)
          : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? self.borderWidth) : null,
      borderColor: borderColorProvided ? (borderColor ?? self.borderColor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDecorationThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryIdleBackgroundColor == self.primaryIdleBackgroundColor &&
        other.primaryHoverBackgroundColor == self.primaryHoverBackgroundColor &&
        other.primaryTapBackgroundColor == self.primaryTapBackgroundColor &&
        other.secondaryIdleBackgroundColor == self.secondaryIdleBackgroundColor &&
        other.secondaryHoverBackgroundColor == self.secondaryHoverBackgroundColor &&
        other.secondaryTapBackgroundColor == self.secondaryTapBackgroundColor &&
        other.primaryContentColor == self.primaryContentColor &&
        other.secondaryContentColor == self.secondaryContentColor &&
        other.borderWidth == self.borderWidth &&
        other.borderColor == self.borderColor &&
        other.borderRadius == self.borderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.primaryIdleBackgroundColor,
      self.primaryHoverBackgroundColor,
      self.primaryTapBackgroundColor,
      self.secondaryIdleBackgroundColor,
      self.secondaryHoverBackgroundColor,
      self.secondaryTapBackgroundColor,
      self.primaryContentColor,
      self.secondaryContentColor,
      self.borderWidth,
      self.borderColor,
      self.borderRadius,
    );
  }

  @override
  String toString() =>
      'MyoroDecorationThemeExtension(\n'
      '  primaryIdleBackgroundColor: ${self.primaryIdleBackgroundColor},\n'
      '  primaryHoverBackgroundColor: ${self.primaryHoverBackgroundColor},\n'
      '  primaryTapBackgroundColor: ${self.primaryTapBackgroundColor},\n'
      '  secondaryIdleBackgroundColor: ${self.secondaryIdleBackgroundColor},\n'
      '  secondaryHoverBackgroundColor: ${self.secondaryHoverBackgroundColor},\n'
      '  secondaryTapBackgroundColor: ${self.secondaryTapBackgroundColor},\n'
      '  primaryContentColor: ${self.primaryContentColor},\n'
      '  secondaryContentColor: ${self.secondaryContentColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      '  borderColor: ${self.borderColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      ');';
}
