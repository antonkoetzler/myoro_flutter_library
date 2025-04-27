import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:storyboard/storyboard.dart';

/// [EdgeInsets.symmetric] configuration of [PaddingWidgetShowcaseOptionConfiguration].
///
/// TODO: Needs to be tested.
final class PaddingWidgetShowcaseOptionSymmetricConfiguration extends Equatable {
  /// [EdgeInsets.vertical]
  final PaddingWidgetShowcaseOptionConfigurationOnChanged verticalOnChanged;

  /// [EdgeInsets.horizontal]
  final PaddingWidgetShowcaseOptionConfigurationOnChanged horizontalOnChanged;

  const PaddingWidgetShowcaseOptionSymmetricConfiguration({
    required this.verticalOnChanged,
    required this.horizontalOnChanged,
  });

  PaddingWidgetShowcaseOptionSymmetricConfiguration copyWith({
    PaddingWidgetShowcaseOptionConfigurationOnChanged? verticalOnChanged,
    PaddingWidgetShowcaseOptionConfigurationOnChanged? horizontalOnChanged,
  }) {
    return PaddingWidgetShowcaseOptionSymmetricConfiguration(
      verticalOnChanged: verticalOnChanged ?? this.verticalOnChanged,
      horizontalOnChanged: horizontalOnChanged ?? this.horizontalOnChanged,
    );
  }

  @override
  List<Object?> get props {
    return [verticalOnChanged, horizontalOnChanged];
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionSymmetricConfiguration(\n'
      '  verticalOnChanged: $verticalOnChanged,\n'
      '  horizontalOnChanged: $horizontalOnChanged,\n'
      ');';
}
