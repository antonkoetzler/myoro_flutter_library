// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_snack_bar_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroSnackBarThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroSnackBarThemeExtension with _$MyoroSnackBarThemeExtensionMixin {}
/// ```
mixin _$MyoroSnackBarThemeExtensionMixin
    on ThemeExtension<MyoroSnackBarThemeExtension> {
  MyoroSnackBarThemeExtension get self => this as MyoroSnackBarThemeExtension;

  @override
  MyoroSnackBarThemeExtension copyWith({
    Color? primaryColor,
    Color? standardBorderColor,
    Color? attentionBorderColor,
    Color? successBorderColor,
    Color? errorBorderColor,
    double? borderWidth,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    double? spacing,
    TextStyle? messageTextStyle,
    IconData? closeButtonIcon,
    double? closeButtonIconSize,
  }) {
    return MyoroSnackBarThemeExtension(
      primaryColor: primaryColor ?? self.primaryColor,
      standardBorderColor: standardBorderColor ?? self.standardBorderColor,
      attentionBorderColor: attentionBorderColor ?? self.attentionBorderColor,
      successBorderColor: successBorderColor ?? self.successBorderColor,
      errorBorderColor: errorBorderColor ?? self.errorBorderColor,
      borderWidth: borderWidth ?? self.borderWidth,
      borderRadius: borderRadius ?? self.borderRadius,
      padding: padding ?? self.padding,
      spacing: spacing ?? self.spacing,
      messageTextStyle: messageTextStyle ?? self.messageTextStyle,
      closeButtonIcon: closeButtonIcon ?? self.closeButtonIcon,
      closeButtonIconSize: closeButtonIconSize ?? self.closeButtonIconSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroSnackBarThemeExtension &&
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
        other.closeButtonIcon == self.closeButtonIcon &&
        other.closeButtonIconSize == self.closeButtonIconSize;
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
      self.closeButtonIcon,
      self.closeButtonIconSize,
    );
  }

  @override
  String toString() =>
      'MyoroSnackBarThemeExtension(\n'
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
      '  closeButtonIcon: ${self.closeButtonIcon},\n'
      '  closeButtonIconSize: ${self.closeButtonIconSize},\n'
      ');';
}
