// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myoro_resize_divider_configuration.dart';

// **************************************************************************
// MyoroModelGenerator
// **************************************************************************

extension $MyoroResizeDividerConfigurationExtension
    on MyoroResizeDividerConfiguration {
  MyoroResizeDividerConfiguration copyWith({
    MyoroBasicDividerConfiguration? basicDividerConfiguration,
    void Function(DragUpdateDetails)? dragCallback,
    bool dragCallbackProvided = true,
  }) {
    return MyoroResizeDividerConfiguration(
      basicDividerConfiguration:
          basicDividerConfiguration ?? this.basicDividerConfiguration,
      dragCallback:
          dragCallbackProvided ? (dragCallback ?? this.dragCallback) : null,
    );
  }
}

/// Apply this mixin to [MyoroResizeDividerConfiguration] once the code is generated.
///
/// ```dart
/// class MyoroResizeDividerConfiguration with $MyoroResizeDividerConfigurationMixin {}
/// ```
mixin $MyoroResizeDividerConfigurationMixin {
  MyoroResizeDividerConfiguration get self =>
      this as MyoroResizeDividerConfiguration;

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
