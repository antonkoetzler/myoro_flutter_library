import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_configuration.g.dart';

/// Configuration model of [MyoroIconTextButton].
@myoroModel
class MyoroIconTextButtonConfiguration extends MyoroButtonConfiguration with _$MyoroIconTextButtonConfigurationMixin {
  static const invertDefaultValue = false;

  const MyoroIconTextButtonConfiguration({
    super.cursor,
    super.tooltipConfiguration,
    super.onTapDown,
    super.onTapUp,
    super.isLoading,
    this.invert = invertDefaultValue,
    this.iconConfiguration,
    this.textConfiguration,
  }) : assert(
         !(iconConfiguration == null && textConfiguration == null),
         '[MyoroIconTextButtonConfiguration]: [iconConfiguration] '
         'and/or [textConfiguration] must be provided.',
       );

  factory MyoroIconTextButtonConfiguration.fake() {
    final mandatorilyProvidedConfiguration = faker.randomGenerator.boolean() ? 'icon' : 'text';

    return MyoroIconTextButtonConfiguration(
      invert: faker.randomGenerator.boolean(),
      tooltipConfiguration: faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      onTapDown: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp: faker.randomGenerator.boolean() ? ((_) {}) : null,
      iconConfiguration: (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'icon')
          ? MyoroIconConfiguration.fake()
          : null,
      textConfiguration: (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'text')
          ? MyoroTextConfiguration.fake()
          : null,
    );
  }

  /// Whether or not to invert the icon and text.
  ///
  /// Only effective when both [iconConfiguration] and [textConfiguration] is provided.
  final bool invert;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroTextConfiguration? textConfiguration;
}
