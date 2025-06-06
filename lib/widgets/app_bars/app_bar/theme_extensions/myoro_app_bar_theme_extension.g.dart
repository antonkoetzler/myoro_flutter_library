// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_app_bar_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroAppBarThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroAppBarThemeExtension with $MyoroAppBarThemeExtensionMixin {}
/// ```
mixin $MyoroAppBarThemeExtensionMixin
    on ThemeExtension<MyoroAppBarThemeExtension> {
  MyoroAppBarThemeExtension get self => this as MyoroAppBarThemeExtension;

  @override
  MyoroAppBarThemeExtension copyWith({
    Color? primaryColor,
    EdgeInsets? contentPadding,
  }) {
    return MyoroAppBarThemeExtension(
      primaryColor: primaryColor ?? self.primaryColor,
      contentPadding: contentPadding ?? self.contentPadding,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAppBarThemeExtension &&
        other.runtimeType == runtimeType &&
        other.primaryColor == self.primaryColor &&
        other.contentPadding == self.contentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(self.primaryColor, self.contentPadding);
  }

  @override
  String toString() =>
      'MyoroAppBarThemeExtension(\n'
      '  primaryColor: ${self.primaryColor},\n'
      '  contentPadding: ${self.contentPadding},\n'
      ');';
}
