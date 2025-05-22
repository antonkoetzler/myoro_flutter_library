import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Configuration model of [MyoroIconTextButton].
class MyoroIconTextButtonConfiguration extends Equatable {
  static const invertDefaultValue = false;
  static const spacingDefaultValue = 10.0;
  static const paddingDefaultValue = EdgeInsets.all(5);

  /// [MyoroButtonConfiguration]
  final MyoroButtonConfiguration? buttonConfiguration;

  /// By default, the icon is displays on the left, and
  /// the text on the right, this is to invert the order.
  final bool invert;

  /// Spacing between the icon and text.
  final double spacing;

  /// Content padding.
  final EdgeInsets padding;

  /// [Color] builder of the icon and text.
  final MyoroIconTextButtonConfigurationContentColorBuilder? contentColorBuilder;

  /// Icon configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonIconConfiguration? iconConfiguration;

  /// Text configuration of the [MyoroIconTextButton].
  final MyoroIconTextButtonTextConfiguration? textConfiguration;

  const MyoroIconTextButtonConfiguration({
    this.buttonConfiguration,
    this.invert = invertDefaultValue,
    this.spacing = spacingDefaultValue,
    this.padding = paddingDefaultValue,
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
      spacing: faker.randomGenerator.decimal(scale: 20),
      padding: myoroFake<EdgeInsets>(),
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

  MyoroIconTextButtonConfiguration copyWith({
    MyoroButtonConfiguration? buttonConfiguration,
    bool buttonConfigurationProvided = true,
    bool? invert,
    double? spacing,
    EdgeInsets? padding,
    MyoroIconTextButtonConfigurationContentColorBuilder? contentColorBuilder,
    bool contentColorBuilderProvided = true,
    MyoroIconTextButtonIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroIconTextButtonTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
  }) {
    return MyoroIconTextButtonConfiguration(
      buttonConfiguration: buttonConfigurationProvided ? (buttonConfiguration ?? this.buttonConfiguration) : null,
      invert: invert ?? this.invert,
      spacing: spacing ?? this.spacing,
      padding: padding ?? this.padding,
      contentColorBuilder: contentColorBuilderProvided ? (contentColorBuilder ?? this.contentColorBuilder) : null,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? this.iconConfiguration) : null,
      textConfiguration: textConfigurationProvided ? (textConfiguration ?? this.textConfiguration) : null,
    );
  }

  @override
  List<Object?> get props {
    return [buttonConfiguration, invert, spacing, padding, contentColorBuilder, iconConfiguration, textConfiguration];
  }

  @override
  String toString() =>
      'MyoroIconTextButtonConfiguration(\n'
      '  buttonConfiguration: $buttonConfiguration,\n'
      '  invert: $invert,\n'
      '  spacing: $spacing,\n'
      '  padding: $padding,\n'
      '  contentColorBuilder: $contentColorBuilder,\n'
      '  iconConfiguration: $iconConfiguration,\n'
      '  textConfiguration: $textConfiguration,\n'
      ');';
}
