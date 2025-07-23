import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:myoro_flutter_library/myoro_flutter_library.dart';

/// Enum for the types of dialog messages available.
enum MyoroSnackBarTypeEnum {
  /// Standard message.
  standard,

  /// Warning message.
  attention,

  /// Success message.
  success,

  /// Error message.
  error;

  // coverage:ignore-start
  factory MyoroSnackBarTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }
  // coverage:ignore-end

  /// Border color of the snack bar.
  Color getColor(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    return switch (this) {
      standard => themeExtension.standardBorderColor,
      attention => themeExtension.attentionBorderColor,
      success => themeExtension.successBorderColor,
      error => themeExtension.errorBorderColor,
    };
  }

  bool get isStandard => this == standard;
  bool get isAttention => this == attention;
  bool get isSuccess => this == success;
  bool get isError => this == error;
}
