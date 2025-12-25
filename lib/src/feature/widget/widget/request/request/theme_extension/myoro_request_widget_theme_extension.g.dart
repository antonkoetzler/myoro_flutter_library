// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_request_widget_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroRequestWidgetThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroRequestWidgetThemeExtension with _$MyoroRequestWidgetThemeExtensionMixin {}
/// ```
mixin _$MyoroRequestWidgetThemeExtensionMixin on ThemeExtension<MyoroRequestWidgetThemeExtension> {
  MyoroRequestWidgetThemeExtension get self => this as MyoroRequestWidgetThemeExtension;

  @override
  MyoroRequestWidgetThemeExtension copyWith({
    EdgeInsets? errorFeedbackPadding,
    bool errorFeedbackPaddingProvided = true,
    EdgeInsets? loaderPadding,
    bool loaderPaddingProvided = true,
  }) {
    return MyoroRequestWidgetThemeExtension(
      errorFeedbackPadding: errorFeedbackPaddingProvided ? (errorFeedbackPadding ?? self.errorFeedbackPadding) : null,
      loaderPadding: loaderPaddingProvided ? (loaderPadding ?? self.loaderPadding) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRequestWidgetThemeExtension &&
        other.runtimeType == runtimeType &&
        other.errorFeedbackPadding == self.errorFeedbackPadding &&
        other.loaderPadding == self.loaderPadding;
  }

  @override
  int get hashCode {
    return Object.hash(self.errorFeedbackPadding, self.loaderPadding);
  }

  @override
  String toString() =>
      'MyoroRequestWidgetThemeExtension(\n'
      '  errorFeedbackPadding: ${self.errorFeedbackPadding},\n'
      '  loaderPadding: ${self.loaderPadding},\n'
      ');';
}
