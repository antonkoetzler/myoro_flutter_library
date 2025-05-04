import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';
import 'package:storyboard/storyboard.dart';

/// [MyoroInputConfiguration.onChanged] of the respective [MyoroInput].
typedef PaddingWidgetShowcaseOptionConfigurationOnChanged =
    void Function(double value);

/// Configuration model of [PaddingWidgetShowcaseOption].
///
/// TODO: Needs to be tested.
final class PaddingWidgetShowcaseOptionConfiguration extends Equatable {
  /// [WidgetShowcaseOption.labelConfiguration]
  final WidgetShowcaseOptionLabelConfiguration? labelConfiguration;

  /// [EdgeInsets.all] configuration.
  final PaddingWidgetShowcaseOptionAllConfiguration? allConfiguration;

  /// [EdgeInsets.symmetric] configuration].
  final PaddingWidgetShowcaseOptionSymmetricConfiguration?
  symmetricConfiguration;

  const PaddingWidgetShowcaseOptionConfiguration({
    this.labelConfiguration,
    this.allConfiguration,
    this.symmetricConfiguration,
  }) : assert(
         (allConfiguration != null) ^ (symmetricConfiguration != null),
         '[PaddingWidgetShowcaseOptionConfiguration]: [allConfiguration] '
         '(x)or [symmetricConfiguration] must be provided.',
       );

  factory PaddingWidgetShowcaseOptionConfiguration.fake() {
    final bool useAllConfiguration = faker.randomGenerator.boolean();

    return PaddingWidgetShowcaseOptionConfiguration(
      labelConfiguration:
          faker.randomGenerator.boolean()
              ? WidgetShowcaseOptionLabelConfiguration.fake()
              : null,
      allConfiguration:
          useAllConfiguration
              ? PaddingWidgetShowcaseOptionAllConfiguration.fake()
              : null,
      symmetricConfiguration:
          useAllConfiguration
              ? null
              : PaddingWidgetShowcaseOptionSymmetricConfiguration.fake(),
    );
  }

  PaddingWidgetShowcaseOptionConfiguration copyWith({
    WidgetShowcaseOptionLabelConfiguration? labelConfiguration,
    bool labelConfigurationProvided = true,
    PaddingWidgetShowcaseOptionAllConfiguration? allConfiguration,
    PaddingWidgetShowcaseOptionSymmetricConfiguration? symmetricConfiguration,
  }) {
    return PaddingWidgetShowcaseOptionConfiguration(
      labelConfiguration:
          labelConfigurationProvided
              ? (labelConfiguration ?? this.labelConfiguration)
              : null,
      allConfiguration: allConfiguration ?? this.allConfiguration,
      symmetricConfiguration:
          symmetricConfiguration ?? this.symmetricConfiguration,
    );
  }

  @override
  List<Object?> get props {
    return [labelConfiguration, allConfiguration, symmetricConfiguration];
  }

  @override
  String toString() =>
      'PaddingWidgetShowcaseOptionConfiguration(\n'
      '  labelConfiguration: $labelConfiguration,\n'
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
