import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [EdgeInsets.all] configuration of [PaddingWidgetShowcaseOptionConfiguration].
///
/// TODO: Needs to be tested.
final class PaddingWidgetShowcaseOptionAllConfiguration extends Equatable {
  /// [EdgeInsets.top]
  final PaddingWidgetShowcaseOptionConfigurationOnChanged topOnChanged;

  /// [EdgeInsets.bottom]
  final PaddingWidgetShowcaseOptionConfigurationOnChanged bottomOnChanged;

  /// [EdgeInsets.left]
  final PaddingWidgetShowcaseOptionConfigurationOnChanged leftOnChanged;

  /// [EdgeInsets.right]
  final PaddingWidgetShowcaseOptionConfigurationOnChanged rightOnChanged;

  const PaddingWidgetShowcaseOptionAllConfiguration({
    required this.topOnChanged,
    required this.bottomOnChanged,
    required this.leftOnChanged,
    required this.rightOnChanged,
  });

  PaddingWidgetShowcaseOptionAllConfiguration.fake()
    : topOnChanged = ((_) {}),
      bottomOnChanged = ((_) {}),
      leftOnChanged = ((_) {}),
      rightOnChanged = ((_) {});

  PaddingWidgetShowcaseOptionAllConfiguration copyWith({
    PaddingWidgetShowcaseOptionConfigurationOnChanged? topOnChanged,
    PaddingWidgetShowcaseOptionConfigurationOnChanged? bottomOnChanged,
    PaddingWidgetShowcaseOptionConfigurationOnChanged? leftOnChanged,
    PaddingWidgetShowcaseOptionConfigurationOnChanged? rightOnChanged,
  }) {
    return PaddingWidgetShowcaseOptionAllConfiguration(
      topOnChanged: topOnChanged ?? this.topOnChanged,
      bottomOnChanged: bottomOnChanged ?? this.bottomOnChanged,
      leftOnChanged: leftOnChanged ?? this.leftOnChanged,
      rightOnChanged: rightOnChanged ?? this.rightOnChanged,
    );
  }

  @override
  List<Object?> get props {
    return [topOnChanged, bottomOnChanged, leftOnChanged, rightOnChanged];
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionAllConfiguration(\n'
      '  topOnChanged: $topOnChanged,\n'
      '  bottomOnChanged: $bottomOnChanged,\n'
      '  leftOnChanged: $leftOnChanged,\n'
      '  rightOnChanged: $rightOnChanged,\n'
      ');';
}
