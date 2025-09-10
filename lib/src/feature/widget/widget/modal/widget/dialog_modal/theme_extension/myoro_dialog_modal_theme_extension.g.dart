// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDialogModalThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalThemeExtension with _$MyoroDialogModalThemeExtensionMixin {}
/// ```
mixin _$MyoroDialogModalThemeExtensionMixin on ThemeExtension<MyoroDialogModalThemeExtension> {
  MyoroDialogModalThemeExtension get self => this as MyoroDialogModalThemeExtension;

  @override
  MyoroDialogModalThemeExtension copyWith({
    TextStyle? textStyle,
    bool textStyleProvided = true,
    double? footerButtonsSpacing,
    bool footerButtonsSpacingProvided = true,
  }) {
    return MyoroDialogModalThemeExtension(
      textStyle: textStyleProvided ? (textStyle ?? self.textStyle) : null,
      footerButtonsSpacing: footerButtonsSpacingProvided ? (footerButtonsSpacing ?? self.footerButtonsSpacing) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDialogModalThemeExtension &&
        other.runtimeType == runtimeType &&
        other.textStyle == self.textStyle &&
        other.footerButtonsSpacing == self.footerButtonsSpacing;
  }

  @override
  int get hashCode {
    return Object.hash(self.textStyle, self.footerButtonsSpacing);
  }

  @override
  String toString() =>
      'MyoroDialogModalThemeExtension(\n'
      '  textStyle: ${self.textStyle},\n'
      '  footerButtonsSpacing: ${self.footerButtonsSpacing},\n'
      ');';
}
