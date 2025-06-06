// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_modal_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroModalThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroModalThemeExtension with $MyoroModalThemeExtensionMixin {}
/// ```
mixin $MyoroModalThemeExtensionMixin
    on ThemeExtension<MyoroModalThemeExtension> {
  MyoroModalThemeExtension get self => this as MyoroModalThemeExtension;

  @override
  MyoroModalThemeExtension copyWith({
    Color? primaryColor,
    BorderRadius? borderRadius,
    Border? border,
    EdgeInsets? padding,
    double? spacing,
    TextStyle? titleTextStyle,
    IconData? closeButtonIcon,
    double? closeButtonIconSize,
  }) {
    return MyoroModalThemeExtension(
      primaryColor: primaryColor ?? self.primaryColor,
      borderRadius: borderRadius ?? self.borderRadius,
      border: border ?? self.border,
      padding: padding ?? self.padding,
      spacing: spacing ?? self.spacing,
      titleTextStyle: titleTextStyle ?? self.titleTextStyle,
      closeButtonIcon: closeButtonIcon ?? self.closeButtonIcon,
      closeButtonIconSize: closeButtonIconSize ?? self.closeButtonIconSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroModalThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == self.primaryColor &&
        other.borderRadius == self.borderRadius &&
        other.border == self.border &&
        other.padding == self.padding &&
        other.spacing == self.spacing &&
        other.titleTextStyle == self.titleTextStyle &&
        other.closeButtonIcon == self.closeButtonIcon &&
        other.closeButtonIconSize == self.closeButtonIconSize;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.primaryColor,
      self.borderRadius,
      self.border,
      self.padding,
      self.spacing,
      self.titleTextStyle,
      self.closeButtonIcon,
      self.closeButtonIconSize,
    );
  }

  @override
  String toString() =>
      'MyoroModalThemeExtension(\n'
      '  primaryColor: ${self.primaryColor},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  border: ${self.border},\n'
      '  padding: ${self.padding},\n'
      '  spacing: ${self.spacing},\n'
      '  titleTextStyle: ${self.titleTextStyle},\n'
      '  closeButtonIcon: ${self.closeButtonIcon},\n'
      '  closeButtonIconSize: ${self.closeButtonIconSize},\n'
      ');';
}
