import 'package:faker/faker.dart' hide Color;
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_screen_configuration.g.dart';

/// Configuration of [MyoroScreen].
@immutable
@myoroModel
class MyoroScreenConfiguration with _$MyoroScreenConfigurationMixin {
  /// Default value for [drawerEnableOpenDragGesture].
  static const drawerEnableOpenDragGestureDefaultValue = true;

  /// Default value for [endDrawerEnableOpenDragGesture].
  static const endDrawerEnableOpenDragGestureDefaultValue = true;

  /// Creates a new instance of [MyoroScreenConfiguration].
  const MyoroScreenConfiguration({
    this.drawerController,
    this.appBar,
    this.drawerEnableOpenDragGesture = drawerEnableOpenDragGestureDefaultValue,
    this.endDrawerEnableOpenDragGesture = endDrawerEnableOpenDragGestureDefaultValue,
    required this.body,
  });

  /// Creates a fake instance of [MyoroScreenConfiguration] for testing purposes.
  MyoroScreenConfiguration.fake()
    : drawerController = faker.randomGenerator.boolean() ? MyoroDrawerController() : null,
      appBar = faker.randomGenerator.boolean() ? const MyoroAppBar(child: SizedBox.shrink()) : null,
      drawerEnableOpenDragGesture = faker.randomGenerator.boolean(),
      endDrawerEnableOpenDragGesture = faker.randomGenerator.boolean(),
      body = const SizedBox.shrink();

  /// [MyoroDrawerController] if it needs to be controlled externally.
  final MyoroDrawerController? drawerController;

  /// App bar of the screen.
  final PreferredSizeWidget? appBar;

  /// [Scaffold.drawerEnableOpenDragGesture]
  final bool drawerEnableOpenDragGesture;

  /// [Scaffold.endDrawerEnableOpenDragGesture]
  final bool endDrawerEnableOpenDragGesture;

  /// Body of the screen.
  final Widget body;
}
