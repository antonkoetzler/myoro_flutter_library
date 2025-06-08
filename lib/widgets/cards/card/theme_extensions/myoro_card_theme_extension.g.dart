// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_card_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroCardThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCardThemeExtension with _$MyoroCardThemeExtensionMixin {}
/// ```
mixin _$MyoroCardThemeExtensionMixin
    on ThemeExtension<MyoroCardThemeExtension> {
  MyoroCardThemeExtension get self => this as MyoroCardThemeExtension;

  @override
  MyoroCardThemeExtension copyWith({
    Color? backgroundColor,
    Border? border,
    BorderRadius? borderRadius,
    EdgeInsets? padding,
    double? titleCardSpacing,
    TextStyle? textStyle,
  }) {
    return MyoroCardThemeExtension(
      backgroundColor: backgroundColor ?? self.backgroundColor,
      border: border ?? self.border,
      borderRadius: borderRadius ?? self.borderRadius,
      padding: padding ?? self.padding,
      titleCardSpacing: titleCardSpacing ?? self.titleCardSpacing,
      textStyle: textStyle ?? self.textStyle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCardThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == self.backgroundColor &&
        other.border == self.border &&
        other.borderRadius == self.borderRadius &&
        other.padding == self.padding &&
        other.titleCardSpacing == self.titleCardSpacing &&
        other.textStyle == self.textStyle;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.backgroundColor,
      self.border,
      self.borderRadius,
      self.padding,
      self.titleCardSpacing,
      self.textStyle,
    );
  }

  @override
  String toString() =>
      'MyoroCardThemeExtension(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  border: ${self.border},\n'
      '  borderRadius: ${self.borderRadius},\n'
      '  padding: ${self.padding},\n'
      '  titleCardSpacing: ${self.titleCardSpacing},\n'
      '  textStyle: ${self.textStyle},\n'
      ');';
}
