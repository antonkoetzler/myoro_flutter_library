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

  MyoroResizeDividerConfiguration copyWith({
    MyoroBasicDividerConfiguration? basicDividerConfiguration,
    void Function(DragUpdateDetails)? dragCallback,
    bool dragCallbackProvided = true,
  }) {
    return MyoroResizeDividerConfiguration(
      basicDividerConfiguration:
          basicDividerConfiguration ?? self.basicDividerConfiguration,
      dragCallback:
          dragCallbackProvided ? (dragCallback ?? self.dragCallback) : null,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is MyoroResizeDividerConfiguration &&
        other.runtimeType == runtimeType &&
        other.basicDividerConfiguration == self.basicDividerConfiguration &&
        other.dragCallback == self.dragCallback;
  }

  @override
  int get hashCode {
    return Object.hash(self.basicDividerConfiguration, self.dragCallback);
  }

  @override
  String toString() =>
      'MyoroResizeDividerConfiguration(\n'
      '  basicDividerConfiguration: ${self.basicDividerConfiguration},\n'
      '  dragCallback: ${self.dragCallback},\n'
      ');';
}
