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
    BoxDecoration? gradientDecoration,
    bool gradientDecorationProvided = true,
  }) {
    return MyoroScrollableThemeExtension(
      padding: paddingProvided ? (padding ?? self.padding) : null,
      gradientDecoration: gradientDecorationProvided ? (gradientDecoration ?? self.gradientDecoration) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroScrollableThemeExtension &&
        other.runtimeType == runtimeType &&
        other.padding == self.padding &&
        other.gradientDecoration == self.gradientDecoration;
  }

  @override
  int get hashCode {
    return Object.hash(self.padding, self.gradientDecoration);
  }

  @override
  String toString() =>
      'MyoroScrollableThemeExtension(\n'
      '  padding: ${self.padding},\n'
      '  gradientDecoration: ${self.gradientDecoration},\n'
      ');';
}
