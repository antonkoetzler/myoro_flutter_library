// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_request_widget_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroRequestWidgetStyle] once the code is generated.
///
/// ```dart
/// class MyoroRequestWidgetStyle with _$MyoroRequestWidgetStyleMixin {}
/// ```
mixin _$MyoroRequestWidgetStyleMixin {
  MyoroRequestWidgetStyle get self => this as MyoroRequestWidgetStyle;

  MyoroRequestWidgetStyle copyWith({
    EdgeInsets? errorFeedbackPadding,
    bool errorFeedbackPaddingProvided = true,
    EdgeInsets? loaderPadding,
    bool loaderPaddingProvided = true,
  }) {
    return MyoroRequestWidgetStyle(
      errorFeedbackPadding: errorFeedbackPaddingProvided ? (errorFeedbackPadding ?? self.errorFeedbackPadding) : null,
      loaderPadding: loaderPaddingProvided ? (loaderPadding ?? self.loaderPadding) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroRequestWidgetStyle &&
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
      'MyoroRequestWidgetStyle(\n'
      '  errorFeedbackPadding: ${self.errorFeedbackPadding},\n'
      '  loaderPadding: ${self.loaderPadding},\n'
      ');';
}
