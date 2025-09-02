// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_secondary_button_style_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSecondaryButtonStyleThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSecondaryButtonStyleThemeExtension with _$MyoroSecondaryButtonStyleThemeExtensionMixin {}
/// ```
mixin _$MyoroSecondaryButtonStyleThemeExtensionMixin on ThemeExtension<MyoroSecondaryButtonStyleThemeExtension> {
  MyoroSecondaryButtonStyleThemeExtension get self => this as MyoroSecondaryButtonStyleThemeExtension;

  @override
  MyoroSecondaryButtonStyleThemeExtension copyWith({
    Color? idleBackgroundColor,
    bool idleBackgroundColorProvided = true,
    Color? hoverBackgroundColor,
    bool hoverBackgroundColorProvided = true,
    Color? tapBackgroundColor,
    bool tapBackgroundColorProvided = true,
    Color? idleContentColor,
    bool idleContentColorProvided = true,
    Color? hoverContentColor,
    bool hoverContentColorProvided = true,
    Color? tapContentColor,
    bool tapContentColorProvided = true,
    Color? idleBorderColor,
    bool idleBorderColorProvided = true,
    Color? hoverBorderColor,
    bool hoverBorderColorProvided = true,
    Color? tapBorderColor,
    bool tapBorderColorProvided = true,
    double? borderWidth,
    bool borderWidthProvided = true,
  }) {
    return MyoroSecondaryButtonStyleThemeExtension(
      idleBackgroundColor: idleBackgroundColorProvided ? (idleBackgroundColor ?? self.idleBackgroundColor) : null,
      hoverBackgroundColor: hoverBackgroundColorProvided ? (hoverBackgroundColor ?? self.hoverBackgroundColor) : null,
      tapBackgroundColor: tapBackgroundColorProvided ? (tapBackgroundColor ?? self.tapBackgroundColor) : null,
      idleContentColor: idleContentColorProvided ? (idleContentColor ?? self.idleContentColor) : null,
      hoverContentColor: hoverContentColorProvided ? (hoverContentColor ?? self.hoverContentColor) : null,
      tapContentColor: tapContentColorProvided ? (tapContentColor ?? self.tapContentColor) : null,
      idleBorderColor: idleBorderColorProvided ? (idleBorderColor ?? self.idleBorderColor) : null,
      hoverBorderColor: hoverBorderColorProvided ? (hoverBorderColor ?? self.hoverBorderColor) : null,
      tapBorderColor: tapBorderColorProvided ? (tapBorderColor ?? self.tapBorderColor) : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? self.borderWidth) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSecondaryButtonStyleThemeExtension &&
        other.runtimeType == runtimeType &&
        other.idleBackgroundColor == self.idleBackgroundColor &&
        other.hoverBackgroundColor == self.hoverBackgroundColor &&
        other.tapBackgroundColor == self.tapBackgroundColor &&
        other.idleContentColor == self.idleContentColor &&
        other.hoverContentColor == self.hoverContentColor &&
        other.tapContentColor == self.tapContentColor &&
        other.idleBorderColor == self.idleBorderColor &&
        other.hoverBorderColor == self.hoverBorderColor &&
        other.tapBorderColor == self.tapBorderColor &&
        other.borderWidth == self.borderWidth;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.idleBackgroundColor,
      self.hoverBackgroundColor,
      self.tapBackgroundColor,
      self.idleContentColor,
      self.hoverContentColor,
      self.tapContentColor,
      self.idleBorderColor,
      self.hoverBorderColor,
      self.tapBorderColor,
      self.borderWidth,
    );
  }

  @override
  String toString() =>
      'MyoroSecondaryButtonStyleThemeExtension(\n'
      '  idleBackgroundColor: ${self.idleBackgroundColor},\n'
      '  hoverBackgroundColor: ${self.hoverBackgroundColor},\n'
      '  tapBackgroundColor: ${self.tapBackgroundColor},\n'
      '  idleContentColor: ${self.idleContentColor},\n'
      '  hoverContentColor: ${self.hoverContentColor},\n'
      '  tapContentColor: ${self.tapContentColor},\n'
      '  idleBorderColor: ${self.idleBorderColor},\n'
      '  hoverBorderColor: ${self.hoverBorderColor},\n'
      '  tapBorderColor: ${self.tapBorderColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      ');';
}
