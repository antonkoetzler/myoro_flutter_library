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
    BorderRadius? bottomSheetBorderRadius,
    bool bottomSheetBorderRadiusProvided = true,
    Border? border,
    bool borderProvided = true,
    Border? bottomSheetBorder,
    bool bottomSheetBorderProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    EdgeInsets? closeButtonPadding,
    bool closeButtonPaddingProvided = true,
    double? spacing,
    bool spacingProvided = true,
    TextStyle? titleTextStyle,
    bool titleTextStyleProvided = true,
    MyoroIconConfiguration? closeButtonIconConfiguration,
    bool closeButtonIconConfigurationProvided = true,
  }) {
    return MyoroModalThemeExtension(
      constraints: constraintsProvided ? (constraints ?? self.constraints) : null,
      primaryColor: primaryColorProvided ? (primaryColor ?? self.primaryColor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? self.borderRadius) : null,
      bottomSheetBorderRadius: bottomSheetBorderRadiusProvided
          ? (bottomSheetBorderRadius ?? self.bottomSheetBorderRadius)
          : null,
      border: borderProvided ? (border ?? self.border) : null,
      bottomSheetBorder: bottomSheetBorderProvided ? (bottomSheetBorder ?? self.bottomSheetBorder) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      closeButtonPadding: closeButtonPaddingProvided ? (closeButtonPadding ?? self.closeButtonPadding) : null,
      spacing: spacingProvided ? (spacing ?? self.spacing) : null,
      titleTextStyle: titleTextStyleProvided ? (titleTextStyle ?? self.titleTextStyle) : null,
      closeButtonIconConfiguration: closeButtonIconConfigurationProvided
          ? (closeButtonIconConfiguration ?? self.closeButtonIconConfiguration)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroModalThemeExtension &&
        other.runtimeType == runtimeType &&
        other.constraints == self.constraints &&
        other.primaryColor == self.primaryColor &&
        other.borderRadius == self.borderRadius &&
        other.bottomSheetBorderRadius == self.bottomSheetBorderRadius &&
        other.border == self.border &&
        other.bottomSheetBorder == self.bottomSheetBorder &&
        other.padding == self.padding &&
        other.closeButtonPadding == self.closeButtonPadding &&
        other.spacing == self.spacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.closeButtonIconConfiguration == self.closeButtonIconConfiguration;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.constraints,
      self.primaryColor,
      self.borderRadius,
      self.bottomSheetBorderRadius,
      self.border,
      self.bottomSheetBorder,
      self.padding,
      self.closeButtonPadding,
      self.spacing,
      self.titleTextStyle,
      self.closeButtonIconConfiguration,
    );
  }

  @override
  String toString() =>
      'MyoroModalThemeExtension(\n'
      '  constraints: ${self.constraints},\n'
      '  primaryColor: ${self.primaryColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  bottomSheetBorderRadius: ${self.bottomSheetBorderRadius},\n'
      '  border: ${self.border},\n'
      '  bottomSheetBorder: ${self.bottomSheetBorder},\n'
      '  padding: ${self.padding},\n'
      '  closeButtonPadding: ${self.closeButtonPadding},\n'
      '  spacing: ${self.spacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  closeButtonIconConfiguration: ${self.closeButtonIconConfiguration},\n'
      ');';
}
