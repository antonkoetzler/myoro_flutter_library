import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_screen_configuration.g.dart';

/// Configuration of [MyoroScreen].
@immutable
@myoroModel
class MyoroScreenConfiguration with _$MyoroScreenConfigurationMixin {
  const MyoroScreenConfiguration({this.drawerController, this.appBar, required this.body});

  // coverage:ignore-start
  MyoroScreenConfiguration.fake()
    : drawerController = faker.randomGenerator.boolean() ? MyoroDrawerController() : null,
      appBar = faker.randomGenerator.boolean() ? MyoroAppBar(configuration: MyoroAppBarConfiguration.fake()) : null,
      body = const SizedBox.shrink();
  // coverage:ignore-end

  /// [MyoroDrawerController] if it needs to be controlled externally.
  final MyoroDrawerController? drawerController;

  /// App bar of the screen.
  final PreferredSizeWidget? appBar;

  /// Body of the screen.
  final Widget body;
}
