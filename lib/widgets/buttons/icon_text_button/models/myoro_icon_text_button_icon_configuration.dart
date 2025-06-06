import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_icon_text_button_icon_configuration.g.dart';

/// Icon configuration of a [MyoroIconTextButton].
@myoroModel
class MyoroIconTextButtonIconConfiguration with $MyoroIconTextButtonIconConfigurationMixin {
  /// [Icon.icon]
  final IconData icon;

  /// [Icon.size]
  final double? size;

  const MyoroIconTextButtonIconConfiguration({required this.icon, this.size});

  MyoroIconTextButtonIconConfiguration.fake()
    : icon = myoroFake<IconData>(),
      size = faker.randomGenerator.boolean() ? faker.randomGenerator.decimal(scale: 100) : null;
}
