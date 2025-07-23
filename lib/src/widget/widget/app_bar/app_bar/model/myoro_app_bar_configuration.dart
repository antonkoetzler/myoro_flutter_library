import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_app_bar_configuration.g.dart';

/// Configuration of [MyoroAppBar].
@myoroModel
class MyoroAppBarConfiguration with _$MyoroAppBarConfigurationMixin {
  static const borderedDefaultValue = false;

  const MyoroAppBarConfiguration({this.bordered = borderedDefaultValue, this.backgroundColor, required this.child});

  // coverage:ignore-start
  MyoroAppBarConfiguration.fake()
    : bordered = faker.randomGenerator.boolean(),
      backgroundColor = faker.randomGenerator.boolean() ? myoroFake<Color>() : null,
      child = const SizedBox.shrink();
  // coverage:ignore-end

  /// If the app bar contains a border at the bottom.
  final bool bordered;

  /// Background color of the [MyoroAppBar].
  final Color? backgroundColor;

  /// Content of the app bar.
  final Widget child;
}
