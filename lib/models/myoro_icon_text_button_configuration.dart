import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// [Color] builder of the icon and text.
typedef MyoroIconTextButtonConfigurationContentColorBuilder =
    Color Function(MyoroTapStatusEnum tapStatusEnum);

/// Configuration model of [MyoroIconTextButton].
class MyoroIconTextButtonConfiguration extends MyoroButtonConfiguration {
  static const invertDefaultValue = false;
  static const spacingDefaultValue = 10.0;
  static const paddingDefaultValue = EdgeInsets.all(10);

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
    super.cursor,
    super.borderRadius,
    super.backgroundColorBuilder,
    super.borderBuilder,
    super.onTapDown,
    super.onTapUp,
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
      cursor:
          faker.randomGenerator.boolean()
              ? kMyoroTestCursors[faker.randomGenerator.integer(kMyoroTestCursors.length)]
              : null,
      borderRadius:
          faker.randomGenerator.boolean()
              ? BorderRadius.circular(faker.randomGenerator.decimal(scale: 20))
              : null,
      backgroundColorBuilder:
          faker.randomGenerator.boolean()
              ? ((_) => kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)])
              : null,
      borderBuilder:
          faker.randomGenerator.boolean()
              ? ((_) => Border.all(
                width: faker.randomGenerator.decimal(scale: 10),
                color: kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)],
              ))
              : null,
      onTapDown: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp: faker.randomGenerator.boolean() ? ((_) {}) : null,
      invert: faker.randomGenerator.boolean(),
      spacing: faker.randomGenerator.decimal(scale: 20),
      padding: EdgeInsets.all(faker.randomGenerator.decimal(scale: 50)),
      contentColorBuilder:
          faker.randomGenerator.boolean()
              ? ((_) => kMyoroTestColors[faker.randomGenerator.integer(kMyoroTestColors.length)])
              : null,
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

  @override
  MyoroIconTextButtonConfiguration copyWith({
    MouseCursor? cursor,
    bool cursorProvided = true,
    BorderRadius? borderRadius,
    bool borderRadiusProvided = true,
    MyoroButtonConfigurationBackgroundColorBuilder? backgroundColorBuilder,
    bool backgroundColorBuilderProvided = true,
    MyoroButtonConfigurationBorderBuilder? borderBuilder,
    bool borderBuilderProvided = true,
    MyoroButtonConfigurationOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonConfigurationOnTapUp? onTapUp,
    bool onTapUpProvided = true,
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
      cursor: cursorProvided ? (cursor ?? this.cursor) : null,
      borderRadius: borderRadiusProvided ? (borderRadius ?? this.borderRadius) : null,
      backgroundColorBuilder:
          backgroundColorBuilderProvided
              ? (backgroundColorBuilder ?? this.backgroundColorBuilder)
              : null,
      borderBuilder: borderBuilderProvided ? (borderBuilder ?? this.borderBuilder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
      invert: invert ?? this.invert,
      spacing: spacing ?? this.spacing,
      padding: padding ?? this.padding,
      contentColorBuilder:
          contentColorBuilderProvided ? (contentColorBuilder ?? this.contentColorBuilder) : null,
      iconConfiguration:
          iconConfigurationProvided ? (iconConfiguration ?? this.iconConfiguration) : null,
      textConfiguration:
          textConfigurationProvided ? (textConfiguration ?? this.textConfiguration) : null,
    );
  }

  @override
  List<Object?> get props {
    return [
      cursor,
      borderRadius,
      backgroundColorBuilder,
      borderBuilder,
      onTapDown,
      onTapUp,
      invert,
      spacing,
      padding,
      contentColorBuilder,
      iconConfiguration,
      textConfiguration,
    ];
  }

  @override
  String toString() =>
      'MyoroIconTextButtonConfiguration(\n'
      '  cursor: $cursor,\n'
      '  borderRadius: $borderRadius,\n'
      '  backgroundColorBuilder: $backgroundColorBuilder,\n'
      '  borderBuilder: $borderBuilder,\n'
      '  onTapDown: $onTapDown,\n'
      '  onTapUp: $onTapUp,\n'
      '  invert: $invert,\n'
      '  spacing: $spacing,\n'
      '  padding: $padding,\n'
      '  contentColorBuilder: $contentColorBuilder,\n'
      '  iconConfiguration: $iconConfiguration,\n'
      '  textConfiguration: $textConfiguration,\n'
      ');';
}
