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

  MyoroSnackBarStyle copyWith({
    Color? primaryColor,
    bool primaryColorProvided = true,
    Color? standardBorderColor,
    bool standardBorderColorProvided = true,
    Color? attentionBorderColor,
    bool attentionBorderColorProvided = true,
    Color? successBorderColor,
    bool successBorderColorProvided = true,
    Color? errorBorderColor,
    bool errorBorderColorProvided = true,
    double? borderWidth,
    bool borderWidthProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? messageTextStyle,
    bool messageTextStyleProvided = true,
    IconData? closeButtonIcon,
    bool closeButtonIconProvided = true,
    double? closeButtonIconSize,
    bool closeButtonIconSizeProvided = true,
  }) {
    return MyoroSnackBarStyle(
      primaryColor: primaryColorProvided ? (primaryColor ?? self.primaryColor) : null,
      standardBorderColor: standardBorderColorProvided ? (standardBorderColor ?? self.standardBorderColor) : null,
      attentionBorderColor: attentionBorderColorProvided ? (attentionBorderColor ?? self.attentionBorderColor) : null,
      successBorderColor: successBorderColorProvided ? (successBorderColor ?? self.successBorderColor) : null,
      errorBorderColor: errorBorderColorProvided ? (errorBorderColor ?? self.errorBorderColor) : null,
      borderWidth: borderWidthProvided ? (borderWidth ?? self.borderWidth) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      messageTextStyle: messageTextStyleProvided ? (messageTextStyle ?? self.messageTextStyle) : null,
      closeButtonIcon: closeButtonIconProvided ? (closeButtonIcon ?? self.closeButtonIcon) : null,
      closeButtonIconSize: closeButtonIconSizeProvided ? (closeButtonIconSize ?? self.closeButtonIconSize) : null,
    );
  }

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
      '  closeButtonIcon: ${self.closeButtonIcon},\n'
      '  closeButtonIconSize: ${self.closeButtonIconSize},\n'
      ');';
}
