// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_indexed_stack_theme_extension.dart';

// **************************************************************************
// MyoroThemeExtensionGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIndexedStackThemeExtension] once the code is generated.
///
/// ```dart
/// class MyoroIndexedStackThemeExtension with _$MyoroIndexedStackThemeExtensionMixin {}
/// ```
mixin _$MyoroIndexedStackThemeExtensionMixin on ThemeExtension<MyoroIndexedStackThemeExtension> {
  MyoroIndexedStackThemeExtension get self => this as MyoroIndexedStackThemeExtension;

  @override
  MyoroIndexedStackThemeExtension copyWith({
    double? indexedStackIndicatorSpacing,
    bool indexedStackIndicatorSpacingProvided = true,
    double? indicatorSpacing,
    bool indicatorSpacingProvided = true,
    double? indicatorItemHeight,
    bool indicatorItemHeightProvided = true,
    BorderRadius? indicatorItemBorderRadius,
    bool indicatorItemBorderRadiusProvided = true,
    Color? indicatorItemSelectedColor,
    bool indicatorItemSelectedColorProvided = true,
    Color? indicatorItemUnselectedColor,
    bool indicatorItemUnselectedColorProvided = true,
  }) {
    return MyoroIndexedStackThemeExtension(
      indexedStackIndicatorSpacing: indexedStackIndicatorSpacingProvided
          ? (indexedStackIndicatorSpacing ?? self.indexedStackIndicatorSpacing)
          : null,
      indicatorSpacing: indicatorSpacingProvided ? (indicatorSpacing ?? self.indicatorSpacing) : null,
      indicatorItemHeight: indicatorItemHeightProvided ? (indicatorItemHeight ?? self.indicatorItemHeight) : null,
      indicatorItemBorderRadius: indicatorItemBorderRadiusProvided
          ? (indicatorItemBorderRadius ?? self.indicatorItemBorderRadius)
          : null,
      indicatorItemSelectedColor: indicatorItemSelectedColorProvided
          ? (indicatorItemSelectedColor ?? self.indicatorItemSelectedColor)
          : null,
      indicatorItemUnselectedColor: indicatorItemUnselectedColorProvided
          ? (indicatorItemUnselectedColor ?? self.indicatorItemUnselectedColor)
          : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroIndexedStackThemeExtension &&
        other.runtimeType == runtimeType &&
        other.indexedStackIndicatorSpacing == self.indexedStackIndicatorSpacing &&
        other.indicatorSpacing == self.indicatorSpacing &&
        other.indicatorItemHeight == self.indicatorItemHeight &&
        other.indicatorItemBorderRadius == self.indicatorItemBorderRadius &&
        other.indicatorItemSelectedColor == self.indicatorItemSelectedColor &&
        other.indicatorItemUnselectedColor == self.indicatorItemUnselectedColor;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.indexedStackIndicatorSpacing,
      self.indicatorSpacing,
      self.indicatorItemHeight,
      self.indicatorItemBorderRadius,
      self.indicatorItemSelectedColor,
      self.indicatorItemUnselectedColor,
    );
  }

  @override
  String toString() =>
      'MyoroIndexedStackThemeExtension(\n'
      '  indexedStackIndicatorSpacing: ${self.indexedStackIndicatorSpacing},\n'
      '  indicatorSpacing: ${self.indicatorSpacing},\n'
      '  indicatorItemHeight: ${self.indicatorItemHeight},\n'
      '  indicatorItemBorderRadius: ${self.indicatorItemBorderRadius},\n'
      '  indicatorItemSelectedColor: ${self.indicatorItemSelectedColor},\n'
      '  indicatorItemUnselectedColor: ${self.indicatorItemUnselectedColor},\n'
      ');';
}
