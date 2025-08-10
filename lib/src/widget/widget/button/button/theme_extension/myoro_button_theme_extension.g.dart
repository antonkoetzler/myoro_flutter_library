// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_button_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroButtonThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroButtonThemeExtension with _$MyoroButtonThemeExtensionMixin {}
/// ```
mixin _$MyoroButtonThemeExtensionMixin on ThemeExtension<MyoroButtonThemeExtension> {
  MyoroButtonThemeExtension get self => this as MyoroButtonThemeExtension;

  @override
  MyoroButtonThemeExtension copyWith({
    BoxBorder? border,
    BorderRadius? borderRadius,
    Color? primaryIdleBackgroundColor,
    Color? primaryHoverBackgroundColor,
    Color? primaryTapBackgroundColor,
    Color? primaryIdleContentColor,
    Color? primaryHoverContentColor,
    Color? primaryTapContentColor,
    Color? secondaryIdleBackgroundColor,
    Color? secondaryHoverBackgroundColor,
    Color? secondaryTapBackgroundColor,
    Color? secondaryIdleContentColor,
    Color? secondaryHoverContentColor,
    Color? secondaryTapContentColor,
  }) {
    return MyoroButtonThemeExtension(
      border: border ?? self.border,
      borderRadius: borderRadius ?? self.borderRadius,
      primaryIdleBackgroundColor: primaryIdleBackgroundColor ?? self.primaryIdleBackgroundColor,
      primaryHoverBackgroundColor: primaryHoverBackgroundColor ?? self.primaryHoverBackgroundColor,
      primaryTapBackgroundColor: primaryTapBackgroundColor ?? self.primaryTapBackgroundColor,
      primaryIdleContentColor: primaryIdleContentColor ?? self.primaryIdleContentColor,
      primaryHoverContentColor: primaryHoverContentColor ?? self.primaryHoverContentColor,
      primaryTapContentColor: primaryTapContentColor ?? self.primaryTapContentColor,
      secondaryIdleBackgroundColor: secondaryIdleBackgroundColor ?? self.secondaryIdleBackgroundColor,
      secondaryHoverBackgroundColor: secondaryHoverBackgroundColor ?? self.secondaryHoverBackgroundColor,
      secondaryTapBackgroundColor: secondaryTapBackgroundColor ?? self.secondaryTapBackgroundColor,
      secondaryIdleContentColor: secondaryIdleContentColor ?? self.secondaryIdleContentColor,
      secondaryHoverContentColor: secondaryHoverContentColor ?? self.secondaryHoverContentColor,
      secondaryTapContentColor: secondaryTapContentColor ?? self.secondaryTapContentColor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius &&
        other.primaryIdleBackgroundColor == self.primaryIdleBackgroundColor &&
        other.primaryHoverBackgroundColor == self.primaryHoverBackgroundColor &&
        other.primaryTapBackgroundColor == self.primaryTapBackgroundColor &&
        other.primaryIdleContentColor == self.primaryIdleContentColor &&
        other.primaryHoverContentColor == self.primaryHoverContentColor &&
        other.primaryTapContentColor == self.primaryTapContentColor &&
        other.secondaryIdleBackgroundColor == self.secondaryIdleBackgroundColor &&
        other.secondaryHoverBackgroundColor == self.secondaryHoverBackgroundColor &&
        other.secondaryTapBackgroundColor == self.secondaryTapBackgroundColor &&
        other.secondaryIdleContentColor == self.secondaryIdleContentColor &&
        other.secondaryHoverContentColor == self.secondaryHoverContentColor &&
        other.secondaryTapContentColor == self.secondaryTapContentColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.border,
      self.borderRadius,
      self.primaryIdleBackgroundColor,
      self.primaryHoverBackgroundColor,
      self.primaryTapBackgroundColor,
      self.primaryIdleContentColor,
      self.primaryHoverContentColor,
      self.primaryTapContentColor,
      self.secondaryIdleBackgroundColor,
      self.secondaryHoverBackgroundColor,
      self.secondaryTapBackgroundColor,
      self.secondaryIdleContentColor,
      self.secondaryHoverContentColor,
      self.secondaryTapContentColor,
    );
  }

  @override
  String toString() =>
      'MyoroButtonThemeExtension(\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  primaryIdleBackgroundColor: ${self.primaryIdleBackgroundColor},\n'
      '  primaryHoverBackgroundColor: ${self.primaryHoverBackgroundColor},\n'
      '  primaryTapBackgroundColor: ${self.primaryTapBackgroundColor},\n'
      '  primaryIdleContentColor: ${self.primaryIdleContentColor},\n'
      '  primaryHoverContentColor: ${self.primaryHoverContentColor},\n'
      '  primaryTapContentColor: ${self.primaryTapContentColor},\n'
      '  secondaryIdleBackgroundColor: ${self.secondaryIdleBackgroundColor},\n'
      '  secondaryHoverBackgroundColor: ${self.secondaryHoverBackgroundColor},\n'
      '  secondaryTapBackgroundColor: ${self.secondaryTapBackgroundColor},\n'
      '  secondaryIdleContentColor: ${self.secondaryIdleContentColor},\n'
      '  secondaryHoverContentColor: ${self.secondaryHoverContentColor},\n'
      '  secondaryTapContentColor: ${self.secondaryTapContentColor},\n'
      ');';
}
