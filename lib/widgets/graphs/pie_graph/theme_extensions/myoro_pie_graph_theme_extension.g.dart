// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_pie_graph_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

/// Apply this mixin to [MyoroPieGraphThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroPieGraphThemeExtension with $MyoroPieGraphThemeExtensionMixin {}
/// ```
mixin $MyoroPieGraphThemeExtensionMixin
    on ThemeExtension<MyoroPieGraphThemeExtension> {
  MyoroPieGraphThemeExtension get self => this as MyoroPieGraphThemeExtension;

  @override
  MyoroPieGraphThemeExtension copyWith({Color? itemColor, double? itemRadius}) {
    return MyoroPieGraphThemeExtension(
      itemColor: itemColor ?? self.itemColor,
      itemRadius: itemRadius ?? self.itemRadius,
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
