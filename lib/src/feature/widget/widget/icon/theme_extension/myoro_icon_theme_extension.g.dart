// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_icon_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIconThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroIconThemeExtension with _$MyoroIconThemeExtensionMixin {}
/// ```
mixin _$MyoroIconThemeExtensionMixin on ThemeExtension<MyoroIconThemeExtension> {
  MyoroIconThemeExtension get self => this as MyoroIconThemeExtension;

  @override
  MyoroIconThemeExtension copyWith({Color? color, bool colorProvided = true, double? size, bool sizeProvided = true}) {
    return MyoroIconThemeExtension(
      color: colorProvided ? (color ?? self.color) : null,
      size: sizeProvided ? (size ?? self.size) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIconThemeExtension &&
        other.runtimeType == runtimeType &&
        other.color == self.color &&
        other.size == self.size;
  }

  @override
  int get hashCode {
    return Object.hash(self.color, self.size);
  }

  @override
  String toString() =>
      'MyoroIconThemeExtension(\n'
      '  color: ${self.color},\n'
      '  size: ${self.size},\n'
      ');';
}
