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

  const MyoroTooltipConfiguration({this.waitDuration = waitDurationDefaultValue, this.text = textDefaultValue});

  MyoroTooltipConfiguration.fake({bool? borderBuilderProvided})
    : waitDuration = myoroFake<Duration>(),
      text = faker.lorem.word();

  /// [Duration] before the tooltip message is shown.
  final Duration waitDuration;

  /// Text of the tooltip.
  final String text;
}
