// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_snack_bar_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroSnackBarStyle] once the code is generated.
///
/// ```dart
/// class MyoroSnackBarStyle with _$MyoroSnackBarStyleMixin {}
/// ```
mixin _$MyoroSnackBarStyleMixin {
  MyoroSnackBarStyle get self => this as MyoroSnackBarStyle;

  @override
  bool operator ==(Object other) {
    return other is MyoroSnackBarStyle &&
        other.runtimeType == runtimeType &&
        other.primaryColor == self.primaryColor &&
        other.standardBorderColor == self.standardBorderColor &&
        other.attentionBorderColor == self.attentionBorderColor &&
        other.successBorderColor == self.successBorderColor &&
        other.errorBorderColor == self.errorBorderColor &&
        other.borderWidth == self.borderWidth &&
        other.borderRadius == self.borderRadius &&
        other.padding == self.padding &&
        other.spacing == self.spacing &&
        other.messageTextStyle == self.messageTextStyle &&
        other.closeButtonIconConfiguration == self.closeButtonIconConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.primaryColor,
      self.standardBorderColor,
      self.attentionBorderColor,
      self.successBorderColor,
      self.errorBorderColor,
      self.borderWidth,
      self.borderRadius,
      self.padding,
      self.spacing,
      self.messageTextStyle,
      self.closeButtonIconConfiguration,
    );
  }

  @override
  String toString() =>
      'MyoroSnackBarStyle(\n'
      '  primaryColor: ${self.primaryColor},\n'
      '  standardBorderColor: ${self.standardBorderColor},\n'
      '  attentionBorderColor: ${self.attentionBorderColor},\n'
      '  successBorderColor: ${self.successBorderColor},\n'
      '  errorBorderColor: ${self.errorBorderColor},\n'
      '  borderWidth: ${self.borderWidth},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  padding: ${self.padding},\n'
      '  spacing: ${self.spacing},\n'
      '  messageTextStyle: ${self.messageTextStyle},\n'
      '  closeButtonIconConfiguration: ${self.closeButtonIconConfiguration},\n'
      ');';
}
