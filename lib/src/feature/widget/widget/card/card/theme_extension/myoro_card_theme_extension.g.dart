// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_card_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroCardThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCardThemeExtension with _$MyoroCardThemeExtensionMixin {}
/// ```
mixin _$MyoroCardThemeExtensionMixin on ThemeExtension<MyoroCardThemeExtension> {
  MyoroCardThemeExtension get self => this as MyoroCardThemeExtension;

  @override
  MyoroCardThemeExtension copyWith({
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    Border? border,
    bool borderProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? titleCardSpacing,
    bool titleCardSpacingProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
  }) {
    return MyoroCardThemeExtension(
      backgroundColor: backgroundColorProvided ? (backgroundColor ?? self.backgroundColor) : null,
      border: borderProvided ? (border ?? self.border) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      titleCardSpacing: titleCardSpacingProvided ? (titleCardSpacing ?? self.titleCardSpacing) : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? self.titleTextStyle) : null,
      constraints: constraintsProvided ? (constraints ?? self.constraints) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCardThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == self.backgroundColor &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius &&
        other.padding == self.padding &&
        other.titleCardSpacing == self.titleCardSpacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.constraints == self.constraints;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundColor,
      self.border,
      self.borderRadius,
      self.padding,
      self.titleCardSpacing,
      self.titleTextStyle,
      self.constraints,
    );
  }

  @override
  String toString() =>
      'MyoroCardThemeExtension(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  padding: ${self.padding},\n'
      '  titleCardSpacing: ${self.titleCardSpacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  constraints: ${self.constraints},\n'
      ');';
}
