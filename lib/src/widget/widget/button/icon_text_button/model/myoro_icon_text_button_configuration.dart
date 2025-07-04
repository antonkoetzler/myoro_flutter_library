import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_configuration.g.dart';

/// Configuration model of [MyoroIconTextButton].
@myoroModel
class MyoroIconTextButtonConfiguration extends MyoroButtonConfiguration with _$MyoroIconTextButtonConfigurationMixin {
  static const invertDefaultValue = false;

  /// By default, the icon is displays on the left, and
  /// the text on the right, this is to invert the order.
  final bool invert;

  /// Spacing between the icon and text.
  final double? spacing;

  /// Content padding.
  final EdgeInsets? padding;

  /// [Color] builder of the icon and text.
  final MyoroIconTextButtonConfigurationContentColorBuilder? contentColorBuilder;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroTextConfiguration? textConfiguration;

  const MyoroIconTextButtonConfiguration({
    super.tooltipConfiguration,
    super.cursor,
    super.borderRadius,
    super.backgroundColorBuilder,
    super.borderBuilder,
    super.onTapDown,
    super.onTapUp,
    this.invert = invertDefaultValue,
    this.spacing,
    this.padding,
    this.contentColorBuilder,
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
      tooltipConfiguration: faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      cursor: faker.randomGenerator.boolean() ? myoroFake<SystemMouseCursor>() : null,
      borderRadius:
          faker.randomGenerator.boolean()
              ? BorderRadius.circular(faker.randomGenerator.decimal(scale: 50, min: 1))
              : null,
      backgroundColorBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      borderBuilder:
          faker.randomGenerator.boolean()
              ? ((_) => Border.all(width: faker.randomGenerator.decimal(scale: 10), color: myoroFake<Color>()))
              : null,
      onTapDown: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp: faker.randomGenerator.boolean() ? ((_) {}) : null,
      invert: faker.randomGenerator.boolean(),
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      padding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      contentColorBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      iconConfiguration:
          (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'icon')
              ? MyoroIconConfiguration.fake()
              : null,
      textConfiguration:
          (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'text')
              ? MyoroTextConfiguration.fake()
              : null,
    );
  }
}
