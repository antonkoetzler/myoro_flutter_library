// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_app_bar_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroAppBarThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroAppBarThemeExtension with _$MyoroAppBarThemeExtensionMixin {}
/// ```
mixin _$MyoroAppBarThemeExtensionMixin
    on ThemeExtension<MyoroAppBarThemeExtension> {
  MyoroAppBarThemeExtension get self => this as MyoroAppBarThemeExtension;

  @override
  MyoroAppBarThemeExtension copyWith({
    Color? backgroundColor,
    bool backgroundColorProvided = true,
    EdgeInsets? contentPadding,
    bool contentPaddingProvided = true,
  }) {
    return MyoroAppBarThemeExtension(
      backgroundColor: backgroundColorProvided
          ? (backgroundColor ?? self.backgroundColor)
          : null,
      contentPadding: contentPaddingProvided
          ? (contentPadding ?? self.contentPadding)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroAppBarThemeExtension &&
        other.runtimeType == runtimeType &&
        other.backgroundColor == self.backgroundColor &&
        other.contentPadding == self.contentPadding;
  }

  @override
  int get hashCode {
    return Object.hash(self.backgroundColor, self.contentPadding);
  }

  @override
  String toString() =>
      'MyoroAppBarThemeExtension(\n'
      '  backgroundColor: ${self.backgroundColor},\n'
      '  contentPadding: ${self.contentPadding},\n'
      ');';
}
