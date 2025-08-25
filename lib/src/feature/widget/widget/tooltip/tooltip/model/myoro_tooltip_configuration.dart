import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_tooltip_configuration.g.dart';

/// Configuration model of [MyoroTooltip].
@immutable
@myoroModel
class MyoroTooltipConfiguration with _$MyoroTooltipConfigurationMixin {
  static const waitDurationDefaultValue = Duration(milliseconds: 200);
  static const textDefaultValue = '';

  const MyoroTooltipConfiguration({
    this.margin,
    this.waitDuration = waitDurationDefaultValue,
    this.text = textDefaultValue,
  });

  // coverage:ignore-start
  MyoroTooltipConfiguration.fake({bool? borderBuilderProvided})
    : margin = borderBuilderProvided ?? faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      waitDuration = myoroFake<Duration>(),
      text = faker.lorem.word();
  // coverage:ignore-end

  /// Margin [EdgeInsets] of the tooltip.
  final EdgeInsets? margin;

  /// [Duration] before the tooltip message is shown.
  final Duration waitDuration;

  /// Text of the tooltip.
  final String text;

  MyoroTooltipConfiguration copyWith({
    EdgeInsets? margin,
    bool marginProvided = true,
    Duration? waitDuration,
    String? text,
  }) {
    return MyoroTooltipConfiguration(
      margin: marginProvided ? (margin ?? this.margin) : null,
      waitDuration: waitDuration ?? this.waitDuration,
      text: text ?? this.text,
    );
  }
}
