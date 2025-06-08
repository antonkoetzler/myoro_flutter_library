import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_drawer_configuration.g.dart';

/// Configuration of [MyoroDrawer].
@myoroModel
class MyoroDrawerConfiguration with _$MyoroDrawerConfigurationMixin {
  static const showCloseButtonDefaultValue = true;
  static const barrierDismissableDefaultValue = true;

  /// Title of the drawer.
  final String? title;

  /// [TextStyle] of the text in [_Header].
  final TextStyle? titleTextStyle;

  /// Whether or not to show the close button.
  final bool showCloseButton;

  /// Whether or not clicking anywhere but the drawer will close the drawer.
  final bool barrierDismissable;

  /// Content of the drawer.
  final Widget child;

  const MyoroDrawerConfiguration({
    this.title,
    this.titleTextStyle,
    this.showCloseButton = showCloseButtonDefaultValue,
    this.barrierDismissable = barrierDismissableDefaultValue,
    required this.child,
  });

  MyoroDrawerConfiguration.fake()
    : title = faker.randomGenerator.boolean() ? faker.lorem.word() : null,
      titleTextStyle = faker.randomGenerator.boolean() ? MyoroTypographyDesignSystem.instance.randomTextStyle : null,
      showCloseButton = faker.randomGenerator.boolean(),
      barrierDismissable = faker.randomGenerator.boolean(),
      child = const SizedBox.shrink();
}
