import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_drawer_configuration.g.dart';

/// Configuration of [MyoroDrawer].
@immutable
@myoroModel
class MyoroDrawerConfiguration with _$MyoroDrawerConfigurationMixin {
  static const titleDefaultValue = '';
  static const showCloseButtonDefaultValue = true;
  static const barrierDismissableDefaultValue = true;

  const MyoroDrawerConfiguration({
    this.title = titleDefaultValue,
    this.showCloseButton = showCloseButtonDefaultValue,
    this.barrierDismissable = barrierDismissableDefaultValue,
    this.closeButtonIcon,
    required this.child,
  });

  MyoroDrawerConfiguration.fake()
    : title = faker.randomGenerator.boolean() ? faker.lorem.word() : '',
      showCloseButton = faker.randomGenerator.boolean(),
      barrierDismissable = faker.randomGenerator.boolean(),
      closeButtonIcon = faker.randomGenerator.boolean() ? myoroFake<IconData>() : null,
      child = const SizedBox.shrink();

  /// Title of the drawer.
  final String title;

  /// Whether or not to show the close button.
  final bool showCloseButton;

  /// Whether or not clicking anywhere but the drawer will close the drawer.
  final bool barrierDismissable;

  /// [IconData] of the close button.
  final IconData? closeButtonIcon;

  /// Content of the drawer.
  final Widget child;
}
