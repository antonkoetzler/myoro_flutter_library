// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_text_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroTextThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroTextThemeExtension with _$MyoroTextThemeExtensionMixin {}
/// ```
mixin _$MyoroTextThemeExtensionMixin on ThemeExtension<MyoroTextThemeExtension> {
  MyoroTextThemeExtension get self => this as MyoroTextThemeExtension;

  @override
  MyoroTextThemeExtension copyWith({
    int? maxLines,
    TextOverflow? overflow,
    TextAlign? alignment,
    TextStyle? style,
    bool styleProvided = true,
  }) {
    return MyoroTextThemeExtension(
      maxLines: maxLines ?? self.maxLines,
      overflow: overflow ?? self.overflow,
      alignment: alignment ?? self.alignment,
      style: styleProvided ? (style ?? self.style) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroTextThemeExtension &&
        other.runtimeType == runtimeType &&
        other.maxLines == self.maxLines &&
        other.overflow == self.overflow &&
        other.alignment == self.alignment &&
        other.style == self.style;
  }

  @override
  int get hashCode {
    return Object.hash(self.maxLines, self.overflow, self.alignment, self.style);
  }

  @override
  String toString() =>
      'MyoroTextThemeExtension(\n'
      '  maxLines: ${self.maxLines},\n'
      '  overflow: ${self.overflow},\n'
      '  alignment: ${self.alignment},\n'
      '  style: ${self.style},\n'
      ');';
}
