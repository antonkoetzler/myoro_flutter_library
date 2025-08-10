// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_circular_loader_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroCircularLoaderThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroCircularLoaderThemeExtension with _$MyoroCircularLoaderThemeExtensionMixin {}
/// ```
mixin _$MyoroCircularLoaderThemeExtensionMixin on ThemeExtension<MyoroCircularLoaderThemeExtension> {
  MyoroCircularLoaderThemeExtension get self => this as MyoroCircularLoaderThemeExtension;

  @override
  MyoroCircularLoaderThemeExtension copyWith({Color? color, double? size}) {
    return MyoroCircularLoaderThemeExtension(color: color ?? self.color, size: size ?? self.size);
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroCircularLoaderThemeExtension &&
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
      'MyoroCircularLoaderThemeExtension(\n'
      '  color: ${self.color},\n'
      '  size: ${self.size},\n'
      ');';
}
