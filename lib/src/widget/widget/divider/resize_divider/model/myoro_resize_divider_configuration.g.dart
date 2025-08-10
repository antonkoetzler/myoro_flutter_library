// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_resize_divider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

/// Apply this mixin to [MyoroResizeDividerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroResizeDividerConfiguration with _$MyoroResizeDividerConfigurationMixin {}
/// ```
mixin _$MyoroResizeDividerConfigurationMixin {
  MyoroResizeDividerConfiguration get self =>
      this as MyoroResizeDividerConfiguration;

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerConfiguration &&
        other.runtimeType == runtimeType &&
        other.dragCallback == self.dragCallback &&
        other.direction == self.direction &&
        other.shortValue == self.shortValue &&
        other.padding == self.padding;
  }

  @override
  int get hashCode {
    return Object.hash(
      self.dragCallback,
      self.direction,
      self.shortValue,
      self.padding,
    );
  }

  @override
  String toString() =>
      'MyoroResizeDividerConfiguration(\n'
      '  dragCallback: ${self.dragCallback},\n'
      '  direction: ${self.direction},\n'
      '  shortValue: ${self.shortValue},\n'
      '  padding: ${self.padding},\n'
      ');';
}

/// Extension class for @myoroModel to place the copyWith function.
extension $MyoroResizeDividerConfigurationExtension
    on MyoroResizeDividerConfiguration {
  MyoroResizeDividerConfiguration copyWith({
    Axis? direction,
    double? shortValue,
    bool shortValueProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    void Function(DragUpdateDetails)? dragCallback,
    bool dragCallbackProvided = true,
  }) {
    return MyoroResizeDividerConfiguration(
      direction: direction ?? self.direction,
      shortValue: shortValueProvided ? (shortValue ?? self.shortValue) : null,
      padding: paddingProvided ? (padding ?? self.padding) : null,
      dragCallback: dragCallbackProvided
          ? (dragCallback ?? self.dragCallback)
          : null,
    );
  }
}
