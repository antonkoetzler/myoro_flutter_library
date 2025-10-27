// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_indexed_stack_style.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

// coverage:ignore-file

/// Apply this mixin to [MyoroIndexedStackStyle] once the code is generated.
///
/// ```dart
/// class MyoroIndexedStackStyle with _$MyoroIndexedStackStyleMixin {}
/// ```
mixin _$MyoroIndexedStackStyleMixin {
  MyoroIndexedStackStyle get self => this as MyoroIndexedStackStyle;

  MyoroIndexedStackStyle copyWith({
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
    return MyoroIndexedStackStyle(
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
    return other is MyoroIndexedStackStyle &&
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
      'MyoroIndexedStackStyle(\n'
      '  indexedStackIndicatorSpacing: ${self.indexedStackIndicatorSpacing},\n'
      '  indicatorSpacing: ${self.indicatorSpacing},\n'
      '  indicatorItemHeight: ${self.indicatorItemHeight},\n'
      '  indicatorItemBorderRadius: ${self.indicatorItemBorderRadius},\n'
      '  indicatorItemSelectedColor: ${self.indicatorItemSelectedColor},\n'
      '  indicatorItemUnselectedColor: ${self.indicatorItemUnselectedColor},\n'
      ');';
}
