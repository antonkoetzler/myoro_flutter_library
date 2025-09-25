import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_annotations/myoro_flutter_annotations.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

part 'myoro_group_checkbox_configuration.g.dart';

/// Configuration of [MyoroGroupCheckbox].
@immutable
@myoroModel
class MyoroGroupCheckboxConfiguration with _$MyoroGroupCheckboxConfigurationMixin {
  static const directionDefaultValue = Axis.vertical;

  const MyoroGroupCheckboxConfiguration({this.direction = directionDefaultValue, this.onChanged});

  // coverage:ignore-start
  MyoroGroupCheckboxConfiguration.fake()
    : direction = myoroFake<Axis>(),
      onChanged = faker.randomGenerator.boolean() ? ((_, _) {}) : null;
  // coverage:ignore-end

  /// Direction that the checkboxes will built in.
  final Axis direction;

  /// Function executed when any of the checkbox's values are changed.
  final MyoroGroupCheckboxOnChanged? onChanged;
}
