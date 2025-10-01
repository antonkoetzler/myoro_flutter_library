import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum with the different styles of inputs provided by [MyoroInput].
enum MyoroInputStyleEnum {
  /// Underlined input.
  underlined,

  /// Outlined input.
  outlined,

  /// No border..
  none;

  // coverage:ignore-start
  factory MyoroInputStyleEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  /// Border of the input.
  InputBorder? getBorder(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return switch (this) {
      underlined => themeExtension.underlinedBorder,
      outlined => themeExtension.outlinedBorder,
      none => themeExtension.noneBorder,
    };
  }
}
