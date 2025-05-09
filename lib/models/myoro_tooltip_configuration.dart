import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroTooltip].
///
/// TODO: Needs to be tested.
class MyoroTooltipConfiguration extends Equatable {
  static const waitDurationDefaultValue = Duration(milliseconds: 200);

  /// Margin [EdgeInsets] of the tooltip.
  final EdgeInsets? margin;

  /// [Duration] before the tooltip message is shown.
  final Duration waitDuration;

  /// Text of the tooltip.
  final String text;

  /// [Widget] wrapping the tooltip.
  final Widget child;

  const MyoroTooltipConfiguration({
    this.margin,
    this.waitDuration = waitDurationDefaultValue,
    required this.text,
    required this.child,
  });

  MyoroTooltipConfiguration copyWith({
    EdgeInsets? margin,
    bool marginProvided = true,
    Duration? waitDuration,
    String? text,
    Widget? child,
  }) {
    return MyoroTooltipConfiguration(
      margin: marginProvided ? (margin ?? this.margin) : null,
      waitDuration: waitDuration ?? this.waitDuration,
      text: text ?? this.text,
      child: child ?? this.child,
    );
  }

  @override
  List<Object?> get props {
    return [margin, waitDuration, text, child];
  }

  @override
  String toString() =>
      'MyoroTooltipConfiguration(\n'
      '  margin: $margin,\n'
      '  waitDuration: $waitDuration,\n'
      '  text: $text,\n'
      '  child: $child,\n'
      ');';
}
