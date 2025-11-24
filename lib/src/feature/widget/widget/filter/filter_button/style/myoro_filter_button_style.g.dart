// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_filter_button_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroFilterButtonStyle] once the code is generated.
///
/// ```dart
/// class MyoroFilterButtonStyle with _$MyoroFilterButtonStyleMixin {}
/// ```
mixin _$MyoroFilterButtonStyleMixin {
  MyoroFilterButtonStyle get self => this as MyoroFilterButtonStyle;

  MyoroFilterButtonStyle copyWith({
    double? actionButtonsSpacing,
    bool actionButtonsSpacingProvided = true,
    MyoroIconTextButtonStyle? closeButtonStyle,
    bool closeButtonStyleProvided = true,
    MyoroIconTextButtonStyle? clearButtonStyle,
    bool clearButtonStyleProvided = true,
    MyoroIconTextButtonStyle? applyButtonStyle,
    bool applyButtonStyleProvided = true,
  }) {
    return MyoroFilterButtonStyle(
      actionButtonsSpacing: actionButtonsSpacingProvided ? (actionButtonsSpacing ?? self.actionButtonsSpacing) : null,
      closeButtonStyle: closeButtonStyleProvided ? (closeButtonStyle ?? self.closeButtonStyle) : null,
      clearButtonStyle: clearButtonStyleProvided ? (clearButtonStyle ?? self.clearButtonStyle) : null,
      applyButtonStyle: applyButtonStyleProvided ? (applyButtonStyle ?? self.applyButtonStyle) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroFilterButtonStyle &&
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
      'MyoroFilterButtonStyle(\n'
      '  actionButtonsSpacing: ${self.actionButtonsSpacing},\n'
      '  closeButtonStyle: ${self.closeButtonStyle},\n'
      '  clearButtonStyle: ${self.clearButtonStyle},\n'
      '  applyButtonStyle: ${self.applyButtonStyle},\n'
      ');';
}
