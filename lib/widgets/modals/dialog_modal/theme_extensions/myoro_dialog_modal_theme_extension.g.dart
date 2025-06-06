// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroDialogModalThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalThemeExtension with $MyoroDialogModalThemeExtensionMixin {}
/// ```
mixin $MyoroDialogModalThemeExtensionMixin
    on ThemeExtension<MyoroDialogModalThemeExtension> {
  MyoroDialogModalThemeExtension get self =>
      this as MyoroDialogModalThemeExtension;

  @override
  MyoroDialogModalThemeExtension copyWith({
    TextStyle? textStyle,
    double? footerButtonsSpacing,
  }) {
    return MyoroDialogModalThemeExtension(
      textStyle: textStyle ?? self.textStyle,
      footerButtonsSpacing: footerButtonsSpacing ?? self.footerButtonsSpacing,
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
