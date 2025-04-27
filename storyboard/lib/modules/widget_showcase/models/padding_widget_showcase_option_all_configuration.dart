import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

typedef PaddingWidgetShowcaseOptionAllConfigurationCallback =
    double Function(double value);

/// [EdgeInsets.all] configuration of [PaddingWidgetShowcaseConfiguration].
final class PaddingWidgetShowcaseOptionAllConfiguration extends Equatable {
  /// [EdgeInsets.top]
  final PaddingWidgetShowcaseOptionAllConfigurationCallback topOnChanged;

  /// [EdgeInsets.bottom]
  final PaddingWidgetShowcaseOptionAllConfigurationCallback bottomOnChanged;

  /// [EdgeInsets.left]
  final PaddingWidgetShowcaseOptionAllConfigurationCallback leftOnChanged;

  /// [EdgeInsets.right]
  final PaddingWidgetShowcaseOptionAllConfigurationCallback rightOnChanged;
}
