import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_configuration.g.dart';

/// Configuration model of [MyoroIconTextButton].
@myoroModel
class MyoroIconTextButtonConfiguration with _$MyoroIconTextButtonConfigurationMixin {
  static const invertDefaultValue = false;

  /// [MyoroButtonConfiguration]
  final MyoroButtonConfiguration? buttonConfiguration;

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
  final MyoroIconTextButtonIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonTextConfiguration? textConfiguration;

  const MyoroIconTextButtonConfiguration({
    this.buttonConfiguration,
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
      buttonConfiguration: faker.randomGenerator.boolean() ? MyoroButtonConfiguration.fake() : null,
      invert: faker.randomGenerator.boolean(),
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      padding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      contentColorBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      iconConfiguration:
          (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'icon')
              ? MyoroIconTextButtonIconConfiguration.fake()
              : null,
      textConfiguration:
          (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'text')
              ? MyoroIconTextButtonTextConfiguration.fake()
              : null,
    );
  }
}
