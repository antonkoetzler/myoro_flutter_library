part of '../myoro_resize_divider.dart';

/// Configuration of [MyoroResizeDivider].
class MyoroResizeDividerConfiguration extends Equatable {
  /// Configuration model with all configurable options of [MyoroBasicDivider].
  final MyoroBasicDividerConfiguration basicDividerConfiguration;

  /// Resize activated callback.
  final MyoroResizeDividerDragCallback? dragCallback;

  const MyoroResizeDividerConfiguration({required this.basicDividerConfiguration, this.dragCallback});

  MyoroResizeDividerConfiguration copyWith({
    MyoroBasicDividerConfiguration? basicDividerConfiguration,
    MyoroResizeDividerDragCallback? dragCallback,
    bool dragCallbackProvided = true,
  }) {
    return MyoroResizeDividerConfiguration(
      basicDividerConfiguration: basicDividerConfiguration ?? this.basicDividerConfiguration,
      dragCallback: dragCallbackProvided ? (dragCallback ?? this.dragCallback) : null,
    );
  }

  @override
  List<Object?> get props {
    return [basicDividerConfiguration, dragCallback];
  }

  @override
  String toString() =>
      'MyoroResizeDividerConfiguration(\n'
      '  basicDividerConfiguration: $basicDividerConfiguration,\n'
      '  dragCallback: $dragCallback,\n'
      ');';
}
