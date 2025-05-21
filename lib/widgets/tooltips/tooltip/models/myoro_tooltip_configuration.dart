import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroTooltip].
///
/// TODO: Test needs to be rewritten.
class MyoroTooltipConfiguration extends Equatable {
  static const waitDurationDefaultValue = Duration(milliseconds: 200);

  /// Margin [EdgeInsets] of the tooltip.
  final EdgeInsets? margin;

  /// [Duration] before the tooltip message is shown.
  final Duration waitDuration;

  /// Text of the tooltip.
  final String text;

  const MyoroTooltipConfiguration({
    this.margin,
    this.waitDuration = waitDurationDefaultValue,
    required this.text,
  });

  MyoroTooltipConfiguration.fake()
    : margin = faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      waitDuration = myoroFake<Duration>(),
      text = faker.lorem.word();

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

  @override
  List<Object?> get props {
    return [margin, waitDuration, text];
  }

  @override
  String toString() =>
      'MyoroTooltipConfiguration(\n'
      '  margin: $margin,\n'
      '  waitDuration: $waitDuration,\n'
      '  text: $text,\n'
      ');';
}
