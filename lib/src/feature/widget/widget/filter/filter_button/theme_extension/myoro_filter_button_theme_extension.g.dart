// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_filter_button_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFilterButtonThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroFilterButtonThemeExtension with _$MyoroFilterButtonThemeExtensionMixin {}
/// ```
mixin _$MyoroFilterButtonThemeExtensionMixin on ThemeExtension<MyoroFilterButtonThemeExtension> {
  MyoroFilterButtonThemeExtension get self => this as MyoroFilterButtonThemeExtension;

  @override
  MyoroFilterButtonThemeExtension copyWith({
    double? actionButtonsSpacing,
    bool actionButtonsSpacingProvided = true,
    MyoroIconTextButtonStyle? closeButtonStyle,
    bool closeButtonStyleProvided = true,
    MyoroIconTextButtonStyle? clearButtonStyle,
    bool clearButtonStyleProvided = true,
    MyoroIconTextButtonStyle? applyButtonStyle,
    bool applyButtonStyleProvided = true,
  }) {
    return MyoroFilterButtonThemeExtension(
      actionButtonsSpacing: actionButtonsSpacingProvided ? (actionButtonsSpacing ?? self.actionButtonsSpacing) : null,
      closeButtonStyle: closeButtonStyleProvided ? (closeButtonStyle ?? self.closeButtonStyle) : null,
      clearButtonStyle: clearButtonStyleProvided ? (clearButtonStyle ?? self.clearButtonStyle) : null,
      applyButtonStyle: applyButtonStyleProvided ? (applyButtonStyle ?? self.applyButtonStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFilterButtonThemeExtension &&
        other.runtimeType == runtimeType &&
        other.actionButtonsSpacing == self.actionButtonsSpacing &&
        other.closeButtonStyle == self.closeButtonStyle &&
        other.clearButtonStyle == self.clearButtonStyle &&
        other.applyButtonStyle == self.applyButtonStyle;
  }

  @override
  int get hashCode {
    return Object.hash(self.actionButtonsSpacing, self.closeButtonStyle, self.clearButtonStyle, self.applyButtonStyle);
  }

  @override
  String toString() =>
      'MyoroFilterButtonThemeExtension(\n'
      '  actionButtonsSpacing: ${self.actionButtonsSpacing},\n'
      '  closeButtonStyle: ${self.closeButtonStyle},\n'
      '  clearButtonStyle: ${self.clearButtonStyle},\n'
      '  applyButtonStyle: ${self.applyButtonStyle},\n'
      ');';
}
