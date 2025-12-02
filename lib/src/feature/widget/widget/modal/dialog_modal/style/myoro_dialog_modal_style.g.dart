// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_dialog_modal_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroDialogModalStyle] once the code is generated.
///
/// ```dart
/// class MyoroDialogModalStyle with _$MyoroDialogModalStyleMixin {}
/// ```
mixin _$MyoroDialogModalStyleMixin {
  MyoroDialogModalStyle get self => this as MyoroDialogModalStyle;

  MyoroDialogModalStyle copyWith({
    TextStyle? messageTextStyle,
    bool messageTextStyleProvided = true,
    double? footerButtonsSpacing,
    bool footerButtonsSpacingProvided = true,
    BoxConstraints? constraints,
    bool constraintsProvided = true,
    Color? primaryColor,
    bool primaryColorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    Border? border,
    bool borderProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
    EdgeInsets? closeButtonPadding,
    bool closeButtonPaddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    IconData? closeButtonIcon,
    bool closeButtonIconProvided = true,
    double? closeButtonIconSize,
    bool closeButtonIconSizeProvided = true,
    EdgeInsets? margin,
    bool marginProvided = true,
  }) {
    return MyoroDialogModalStyle(
      messageTextStyle: messageTextStyleProvided ? (messageTextStyle ?? self.messageTextStyle) : null,
      footerButtonsSpacing: footerButtonsSpacingProvided ? (footerButtonsSpacing ?? self.footerButtonsSpacing) : null,
      constraints: constraintsProvided ? (constraints ?? self.constraints) : null,
      primaryColor: primaryColorProvided ? (primaryColor ?? self.primaryColor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      border: borderProvided ? (border ?? self.border) : null,
      contentPadding: contentPaddingProvided ? (contentPadding ?? self.contentPadding) : null,
      closeButtonPadding: closeButtonPaddingProvided ? (closeButtonPadding ?? self.closeButtonPadding) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? self.titleTextStyle) : null,
      closeButtonIcon: closeButtonIconProvided ? (closeButtonIcon ?? self.closeButtonIcon) : null,
      closeButtonIconSize: closeButtonIconSizeProvided ? (closeButtonIconSize ?? self.closeButtonIconSize) : null,
      margin: marginProvided ? (margin ?? self.margin) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroDialogModalStyle &&
        other.runtimeType == runtimeType &&
        other.messageTextStyle == self.messageTextStyle &&
        other.footerButtonsSpacing == self.footerButtonsSpacing &&
        other.constraints == self.constraints &&
        other.primaryColor == self.primaryColor &&
        other.borderRadius == self.borderRadius &&
        other.border == self.border &&
        other.contentPadding == self.contentPadding &&
        other.closeButtonPadding == self.closeButtonPadding &&
        other.spacing == self.spacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.closeButtonIcon == self.closeButtonIcon &&
        other.closeButtonIconSize == self.closeButtonIconSize &&
        other.margin == self.margin;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.messageTextStyle,
      self.footerButtonsSpacing,
      self.constraints,
      self.primaryColor,
      self.borderRadius,
      self.border,
      self.contentPadding,
      self.closeButtonPadding,
      self.spacing,
      self.titleTextStyle,
      self.closeButtonIcon,
      self.closeButtonIconSize,
      self.margin,
    );
  }

  @override
  String toString() =>
      'MyoroDialogModalStyle(\n'
      '  messageTextStyle: ${self.messageTextStyle},\n'
      '  footerButtonsSpacing: ${self.footerButtonsSpacing},\n'
      '  constraints: ${self.constraints},\n'
      '  primaryColor: ${self.primaryColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  border: ${self.border},\n'
      '  contentPadding: ${self.contentPadding},\n'
      '  closeButtonPadding: ${self.closeButtonPadding},\n'
      '  spacing: ${self.spacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  closeButtonIcon: ${self.closeButtonIcon},\n'
      '  closeButtonIconSize: ${self.closeButtonIconSize},\n'
      '  margin: ${self.margin},\n'
      ');';
}
