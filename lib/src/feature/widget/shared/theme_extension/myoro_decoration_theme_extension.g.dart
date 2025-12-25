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
    Color? primaryBackgroundIdleColor,
    bool primaryBackgroundIdleColorProvided = true,
    Color? primaryBackgroundHoverColor,
    bool primaryBackgroundHoverColorProvided = true,
    Color? primaryBackgroundTapColor,
    bool primaryBackgroundTapColorProvided = true,
    Color? secondaryBackgroundIdleColor,
    bool secondaryBackgroundIdleColorProvided = true,
    Color? secondaryBackgroundHoverColor,
    bool secondaryBackgroundHoverColorProvided = true,
    Color? secondaryBackgroundTapColor,
    bool secondaryBackgroundTapColorProvided = true,
    Color? disabledBackgroundColor,
    bool disabledBackgroundColorProvided = true,
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
      primaryBackgroundIdleColor: primaryBackgroundIdleColorProvided
          ? (primaryBackgroundIdleColor ?? self.primaryBackgroundIdleColor)
          : null,
      primaryBackgroundHoverColor: primaryBackgroundHoverColorProvided
          ? (primaryBackgroundHoverColor ?? self.primaryBackgroundHoverColor)
          : null,
      primaryBackgroundTapColor: primaryBackgroundTapColorProvided
          ? (primaryBackgroundTapColor ?? self.primaryBackgroundTapColor)
          : null,
      secondaryBackgroundIdleColor: secondaryBackgroundIdleColorProvided
          ? (secondaryBackgroundIdleColor ?? self.secondaryBackgroundIdleColor)
          : null,
      secondaryBackgroundHoverColor: secondaryBackgroundHoverColorProvided
          ? (secondaryBackgroundHoverColor ?? self.secondaryBackgroundHoverColor)
          : null,
      secondaryBackgroundTapColor: secondaryBackgroundTapColorProvided
          ? (secondaryBackgroundTapColor ?? self.secondaryBackgroundTapColor)
          : null,
      disabledBackgroundColor: disabledBackgroundColorProvided
          ? (disabledBackgroundColor ?? self.disabledBackgroundColor)
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
        other.primaryBackgroundIdleColor == self.primaryBackgroundIdleColor &&
        other.primaryBackgroundHoverColor == self.primaryBackgroundHoverColor &&
        other.primaryBackgroundTapColor == self.primaryBackgroundTapColor &&
        other.secondaryBackgroundIdleColor == self.secondaryBackgroundIdleColor &&
        other.secondaryBackgroundHoverColor == self.secondaryBackgroundHoverColor &&
        other.secondaryBackgroundTapColor == self.secondaryBackgroundTapColor &&
        other.disabledBackgroundColor == self.disabledBackgroundColor &&
        other.primaryContentColor == self.primaryContentColor &&
        other.secondaryContentColor == self.secondaryContentColor &&
        other.borderWidth == self.borderWidth &&
        other.borderColor == self.borderColor &&
        other.borderRadius == self.borderRadius;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.primaryBackgroundIdleColor,
      self.primaryBackgroundHoverColor,
      self.primaryBackgroundTapColor,
      self.secondaryBackgroundIdleColor,
      self.secondaryBackgroundHoverColor,
      self.secondaryBackgroundTapColor,
      self.disabledBackgroundColor,
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
      '  primaryBackgroundIdleColor: ${self.primaryBackgroundIdleColor},\n'
      '  primaryBackgroundHoverColor: ${self.primaryBackgroundHoverColor},\n'
      '  primaryBackgroundTapColor: ${self.primaryBackgroundTapColor},\n'
      '  secondaryBackgroundIdleColor: ${self.secondaryBackgroundIdleColor},\n'
      '  secondaryBackgroundHoverColor: ${self.secondaryBackgroundHoverColor},\n'
      '  secondaryBackgroundTapColor: ${self.secondaryBackgroundTapColor},\n'
      '  disabledBackgroundColor: ${self.disabledBackgroundColor},\n'
      '  primaryContentColor: ${self.primaryContentColor},\n'
      '  secondaryContentColor: ${self.secondaryContentColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      '  borderColor: ${self.borderColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      ');';
}
