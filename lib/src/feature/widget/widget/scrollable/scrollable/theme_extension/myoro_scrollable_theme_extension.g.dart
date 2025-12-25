// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_scrollable_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroScrollableThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroScrollableThemeExtension with _$MyoroScrollableThemeExtensionMixin {}
/// ```
mixin _$MyoroScrollableThemeExtensionMixin on ThemeExtension<MyoroScrollableThemeExtension> {
  MyoroScrollableThemeExtension get self => this as MyoroScrollableThemeExtension;

  @override
  MyoroScrollableThemeExtension copyWith({
    EdgeInsets? padding,
    bool paddingProvided = true,
    double? gradientSize,
    bool gradientSizeProvided = true,
    Color? gradientColor,
    bool gradientColorProvided = true,
  }) {
    return MyoroScrollableThemeExtension(
      padding: paddingProvided ? (padding ?? self.padding) : null,
      gradientSize: gradientSizeProvided ? (gradientSize ?? self.gradientSize) : null,
      gradientColor: gradientColorProvided ? (gradientColor ?? self.gradientColor) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == self.padding &&
        other.gradientSize == self.gradientSize &&
        other.gradientColor == self.gradientColor;
  }

  @override
  int get hashCode {
    return Object.hash(self.padding, self.gradientSize, self.gradientColor);
  }

  @override
  String toString() =>
      'MyoroScrollableThemeExtension(\n'
      '  padding: ${self.padding},\n'
      '  gradientSize: ${self.gradientSize},\n'
      '  gradientColor: ${self.gradientColor},\n'
      ');';
}
