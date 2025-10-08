import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_menu_item.g.dart';

/// A model that loads an item in [MyoroMenu], but also can
/// be seen as a general model to load items into a menu.
///
/// 2 "modes":
/// 1. [icon] and/or [text] is provided; a simple [MyoroMenuItem];
/// 2. [builder] provided for a custom [MyoroMenuItem] widget.
@immutable
@myoroModel
class MyoroMenuItem with _$MyoroMenuItemMixin {
  const MyoroMenuItem({this.buttonConfiguration, this.buttonBuilder, this.iconTextButtonConfiguration})
    : assert(
        (buttonBuilder != null && iconTextButtonConfiguration == null) ^
            (buttonBuilder == null && iconTextButtonConfiguration != null),
        '[MyoroMenuItem]: If [buttonBuilder] is not null, [iconTextButtonConfiguration] must be null. '
        'If [iconTextButtonConfiguration] is not null, [buttonConfiguration] and [buttonBuilder] must be null.',
      );

  factory MyoroMenuItem.fake({bool? buttonConfigurationProvided}) {
    buttonConfigurationProvided = buttonConfigurationProvided ?? faker.randomGenerator.boolean();
    return MyoroMenuItem(
      buttonConfiguration: buttonConfigurationProvided ? MyoroButtonConfiguration.fake() : null,
      buttonBuilder: buttonConfigurationProvided ? (_, _) => const SizedBox.shrink() : null,
      iconTextButtonConfiguration: buttonConfigurationProvided ? null : MyoroIconTextButtonConfiguration.fake(),
    );
  }

  /// [MyoroButtonConfiguration] for more specific menu items.
  final MyoroButtonConfiguration? buttonConfiguration;

  /// [MyoroButton.builder] of [buttonConfiguration]'s [MyoroButton].
  final MyoroButtonBuilder? buttonBuilder;

  /// [MyoroIconTextButtonConfiguration] for simpler menu items.
  final MyoroIconTextButtonConfiguration? iconTextButtonConfiguration;

  /// Alias of the effective [MyoroButtonConfiguration.onTapUp].
  MyoroButtonOnTapUp? get onTapUp => buttonConfiguration?.onTapUp ?? iconTextButtonConfiguration?.onTapUp;
}
