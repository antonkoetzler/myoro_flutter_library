// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroModalThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroModalThemeExtension with _$MyoroModalThemeExtensionMixin {}
/// ```
mixin _$MyoroModalThemeExtensionMixin on ThemeExtension<MyoroModalThemeExtension> {
  MyoroModalThemeExtension get self => this as MyoroModalThemeExtension;

  @override
  MyoroModalThemeExtension copyWith({
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
    return MyoroModalThemeExtension(
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
    return other is MyoroModalThemeExtension &&
        other.runtimeType == runtimeType &&
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
      'MyoroModalThemeExtension(\n'
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
