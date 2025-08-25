import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_resize_divider_configuration.g.dart';

/// Configuration of [MyoroResizeDivider].
@immutable
@myoroModel
class MyoroResizeDividerConfiguration extends MyoroBasicDividerConfiguration
    with _$MyoroResizeDividerConfigurationMixin {
  const MyoroResizeDividerConfiguration({required super.direction, super.shortValue, super.padding, this.dragCallback});

  // coverage:ignore-start
  factory MyoroResizeDividerConfiguration.fake() {
    return MyoroResizeDividerConfiguration(
      direction: myoroFake<Axis>(),
      shortValue: faker.randomGenerator.decimal(scale: 20),
      padding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
    );
  }
  // coverage:ignore-end

  /// Resize activated callback.
  final MyoroResizeDividerDragCallback? dragCallback;

  @override
  MyoroResizeDividerConfiguration copyWith({
    Axis? direction,
    double? shortValue,
    bool shortValueProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    MyoroResizeDividerDragCallback? dragCallback,
    bool dragCallbackProvided = true,
  }) {
    return MyoroResizeDividerConfiguration(
      direction: direction ?? this.direction,
      shortValue: shortValueProvided ? (shortValue ?? this.shortValue) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      dragCallback: dragCallbackProvided ? (dragCallback ?? this.dragCallback) : null,
    );
  }
}
