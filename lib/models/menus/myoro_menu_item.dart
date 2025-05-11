import 'package:equatable/equatable.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// A model that loads an item in [MyoroMenu], but also can
/// be seen as a general model to load items into a menu.
///
/// 2 "modes":
/// 1. [icon] and/or [text] is provided; a simple [MyoroMenuItem];
/// 2. [builder] provided for a custom [MyoroMenuItem] widget.
class MyoroMenuItem extends Equatable {
  /// If the item is selected (a.k.a hovered) or not.
  final bool isSelected;

  /// [MyoroIconTextButtonIconConfiguration] of the item.
  final MyoroIconTextButtonIconConfiguration? iconConfiguration;

  /// [MyoroIconTextButtonTextConfiguration] of the item.
  final MyoroIconTextButtonTextConfiguration? textConfiguration;

  /// [MyoroButton.builder] for a custom [Widget] rather than just with an icon and/or text.
  final MyoroButtonBuilder? builder;

  /// On tap down.
  final MyoroButtonConfigurationOnTapDown? onTapDown;

  /// On tap up.
  final MyoroButtonConfigurationOnTapUp? onTapUp;

  const MyoroMenuItem({
    this.isSelected = false,
    this.iconConfiguration,
    this.textConfiguration,
    this.builder,
    this.onTapDown,
    this.onTapUp,
  }) : assert(
         (builder != null)
             ? (iconConfiguration == null && textConfiguration == null)
             : !(iconConfiguration == null && textConfiguration == null),
         '[MyoroMenuItem]: If [builder] is not null, [iconConfiguration] and [textConfiguration] must be '
         'null. If [builder] is null, [iconConfiguration] and/or [textConfiguration] must not be null.',
       );

  factory MyoroMenuItem.fake({bool? builderProvided}) {
    builderProvided = builderProvided ?? faker.randomGenerator.boolean();
    // Prevent assertion errors.
    final bool requiredIconConfiguration = faker.randomGenerator.boolean();

    return MyoroMenuItem(
      isSelected: faker.randomGenerator.boolean(),
      iconConfiguration:
          builderProvided
              ? null
              : ((requiredIconConfiguration || faker.randomGenerator.boolean())
                  ? MyoroIconTextButtonIconConfiguration.fake()
                  : null),
      textConfiguration:
          builderProvided
              ? null
              : ((!requiredIconConfiguration || faker.randomGenerator.boolean())
                  ? MyoroIconTextButtonTextConfiguration.fake()
                  : null),
      builder: builderProvided ? ((_, __) => const SizedBox.shrink()) : null,
      onTapDown: faker.randomGenerator.boolean() ? ((_) {}) : null,
      onTapUp: faker.randomGenerator.boolean() ? ((_) {}) : null,
    );
  }

  MyoroMenuItem copyWith({
    bool? isSelected,
    MyoroIconTextButtonIconConfiguration? iconConfiguration,
    bool iconConfigurationProvided = true,
    MyoroIconTextButtonTextConfiguration? textConfiguration,
    bool textConfigurationProvided = true,
    MyoroButtonBuilder? builder,
    bool builderProvided = true,
    MyoroButtonConfigurationOnTapDown? onTapDown,
    bool onTapDownProvided = true,
    MyoroButtonConfigurationOnTapUp? onTapUp,
    bool onTapUpProvided = true,
  }) {
    return MyoroMenuItem(
      isSelected: isSelected ?? this.isSelected,
      iconConfiguration:
          iconConfigurationProvided ? (iconConfiguration ?? this.iconConfiguration) : null,
      textConfiguration:
          textConfigurationProvided ? (textConfiguration ?? this.textConfiguration) : null,
      builder: builderProvided ? (builder ?? this.builder) : null,
      onTapDown: onTapDownProvided ? (onTapDown ?? this.onTapDown) : null,
      onTapUp: onTapUpProvided ? (onTapUp ?? this.onTapUp) : null,
    );
  }

  @override
  List<Object?> get props {
    return [isSelected, iconConfiguration, textConfiguration, builder, onTapDown, onTapUp];
  }

  @override
  String toString() =>
      'MyoroMenuItem(\n'
      '  isSelected: $isSelected,\n'
      '  iconConfiguration: $iconConfiguration,\n'
      '  textConfiguration: $textConfiguration,\n'
      '  builder: $builder,\n'
      '  onTapDown: $onTapDown,\n'
      '  onTapUp: $onTapUp,\n'
      ');';
}
