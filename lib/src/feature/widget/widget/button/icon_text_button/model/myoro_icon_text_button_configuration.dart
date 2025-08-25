import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_configuration.g.dart';

/// Configuration model of [MyoroIconTextButton].
@myoroModel
class MyoroIconTextButtonConfiguration extends MyoroButtonConfiguration with _$MyoroIconTextButtonConfigurationMixin {
  static const invertDefaultValue = false;

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

  // coverage:ignore-start
  factory MyoroIconTextButtonConfiguration.fake({bool? borderRadiusProvided, bool? borderBuilderProvided}) {
    final mandatorilyProvidedConfiguration = faker.randomGenerator.boolean() ? 'icon' : 'text';

    return MyoroIconTextButtonConfiguration(
      tooltipConfiguration: faker.randomGenerator.boolean() ? MyoroTooltipConfiguration.fake() : null,
      cursor: faker.randomGenerator.boolean() ? myoroFake<MouseCursor>() : null,
      borderRadius: borderRadiusProvided ?? faker.randomGenerator.boolean()
          ? BorderRadius.circular(faker.randomGenerator.decimal(scale: 50, min: 1))
          : null,
      backgroundColorBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      borderBuilder: borderBuilderProvided ?? faker.randomGenerator.boolean()
          ? ((_) => Border.all(width: faker.randomGenerator.decimal(scale: 10), color: myoroFake<Color>()))
          : null,
      onTapDown: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp: faker.randomGenerator.boolean() ? ((_) {}) : null,
      invert: faker.randomGenerator.boolean(),
      spacing: faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 20) : null,
      padding: faker.randomGenerator.boolean() ? myoroFake<EdgeInsets>() : null,
      contentColorBuilder: faker.randomGenerator.boolean() ? ((_) => myoroFake<Color>()) : null,
      iconConfiguration: (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'icon')
          ? MyoroIconConfiguration.fake()
          : null,
      textConfiguration: (faker.randomGenerator.boolean() || mandatorilyProvidedConfiguration == 'text')
          ? MyoroTextConfiguration.fake()
          : null,
    );
  }
  // coverage:ignore-end

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

  @override
  MyoroIconTextButtonConfiguration copyWith({
    MyoroTooltipConfiguration? tooltipConfiguration,
    bool tooltipConfigurationProvided = true,
    MouseCursor? cursor,
    bool cursorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder,
    bool backgroundColorBuilderProvided = true,
    MyoroButtonConfigurationBorderBuilder? borderBuilder,
    bool borderBuilderProvided = true,
    MyoroButtonOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonOnTapUp? onTapUp,
    bool onTapUpProvided = true,
    bool? invert,
    double? spacing,
    bool spacingProvided = true,
    EdgeInsets? padding,
    bool paddingProvided = true,
    MyoroIconTextButtonConfigurationContentColorBuilder? contentColorBuilder,
    bool contentColorBuilderProvided = true,
    MyoroIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
  }) {
    return MyoroIconTextButtonConfiguration(
      tooltipConfiguration: tooltipConfigurationProvided ? (tooltipConfiguration ?? this.tooltipConfiguration) : null,
      cursor: cursorProvided ? (cursor ?? this.cursor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      backgroundColorBuilder: backgroundColorBuilderProvided
          ? (backgroundColorBuilder ?? this.backgroundColorBuilder)
          : null,
      borderBuilder: borderBuilderProvided ? (borderBuilder ?? this.borderBuilder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
      invert: invert ?? this.invert,
      spacing: spacingProvided ? (spacing ?? this.spacing) : null,
      padding: paddingProvided ? (padding ?? this.padding) : null,
      contentColorBuilder: contentColorBuilderProvided ? (contentColorBuilder ?? this.contentColorBuilder) : null,
      iconConfiguration: iconConfigurationProvided ? (iconConfiguration ?? this.iconConfiguration) : null,
      textConfiguration: textConfigurationProvided ? (textConfiguration ?? this.textConfiguration) : null,
    );
  }
}
