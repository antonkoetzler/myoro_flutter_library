// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroPieGraphThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphThemeExtension with _$MyoroPieGraphThemeExtensionMixin {}
/// ```
mixin _$MyoroPieGraphThemeExtensionMixin
    on ThemeExtension<MyoroPieGraphThemeExtension> {
  MyoroPieGraphThemeExtension get self => this as MyoroPieGraphThemeExtension;

  @override
  MyoroPieGraphThemeExtension copyWith({
    Color? itemColor,
    bool itemColorProvided = true,
    double? itemRadius,
    bool itemRadiusProvided = true,
  }) {
    return MyoroPieGraphThemeExtension(
      itemColor: itemColorProvided ? (itemColor ?? self.itemColor) : null,
      itemRadius: itemRadiusProvided ? (itemRadius ?? self.itemRadius) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroPieGraphThemeExtension &&
        other.runtimeType == runtimeType &&
        other.itemColor == self.itemColor &&
        other.itemRadius == self.itemRadius;
  }

  @override
  int get hashCode {
    return Object.hash(self.itemColor, self.itemRadius);
  }

  @override
  String toString() =>
      'MyoroPieGraphThemeExtension(\n'
      '  itemColor: ${self.itemColor},\n'
      '  itemRadius: ${self.itemRadius},\n'
      ');';
}
