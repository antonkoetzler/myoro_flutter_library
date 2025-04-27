import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroInputConfiguration.onChanged] of the respective [MyoroInput].
typedef PaddingWidgetShowcaseOptionConfigurationOnChanged = void Function(double value);

/// Configuration model of [PaddingWidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class PaddingWidgetShowcaseOptionConfiguration extends Equatable {
  /// Label of the title of the [PaddingWidgetShowcaseOption].
  final String? label;

  /// [EdgeInsets.all] configuration.
  final PaddingWidgetShowcaseOptionAllConfiguration? allConfiguration;

  /// [EdgeInsets.symmetric] configuration].
  final PaddingWidgetShowcaseOptionSymmetricConfiguration? symmetricConfiguration;

  const PaddingWidgetShowcaseOptionConfiguration({
    this.label,
    this.allConfiguration,
    this.symmetricConfiguration,
  }) : assert(
         (allConfiguration != null) ^ (symmetricConfiguration != null),
         '[PaddingWidgetShowcaseOptionConfiguration]: [allConfiguration] '
         '(x)or [symmetricConfiguration] must be provided.',
       );

  PaddingWidgetShowcaseOptionConfiguration copyWith({
    String? label,
    bool labelProvided = true,
    PaddingWidgetShowcaseOptionAllConfiguration? allConfiguration,
    PaddingWidgetShowcaseOptionSymmetricConfiguration? symmetricConfiguration,
  }) {
    return PaddingWidgetShowcaseOptionConfiguration(
      label: labelProvided ? (label ?? this.label) : null,
      allConfiguration: allConfiguration ?? this.allConfiguration,
      symmetricConfiguration: symmetricConfiguration ?? this.symmetricConfiguration,
    );
  }

  @override
  List<Object?> get props {
    return [label, allConfiguration, symmetricConfiguration];
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  label: $label,\n'
      '  allConfiguration: $allConfiguration,\n'
      '  symmetricConfiguration: $symmetricConfiguration,\n'
      ');';

  // So we don't have to rely on if/else in code.
  PaddingWidgetShowcaseOptionConfigurationEnum get effectiveConfiguration {
    if (allConfiguration != null) {
      return PaddingWidgetShowcaseOptionConfigurationEnum.all;
    }
    if (symmetricConfiguration != null) {
      return PaddingWidgetShowcaseOptionConfigurationEnum.symmetric;
    }
    throw AssertionError(
      '[PaddingWidgetShowcaseOptionConfiguration.effectiveConfiguration]: Invalid [PaddingWidgetShowcaseOptionConfiguration].',
    );
  }
}
