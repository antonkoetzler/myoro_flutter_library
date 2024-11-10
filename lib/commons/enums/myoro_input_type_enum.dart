import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum with the different types of inputs provided by [MyoroInput].
enum MyoroInputTypeEnum {
  /// Underlined input.
  underlined,

  /// Outlined input.
  outlined;

  factory MyoroInputTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  InputBorder getBorder(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroInputThemeExtension>();

    return switch (this) {
      underlined => themeExtension.underlinedBorder,
      outlined => themeExtension.outlinedBorder,
    };
  }

  bool get isUnderlined => this == underlined;
  bool get isOutlined => this == outlined;
}
