import 'package:faker/faker.dart' hide Color;
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

  /// Fake constructor.
  factory MyoroSnackBarTypeEnum.fake() {
    return values[faker.randomGenerator.integer(values.length)];
  }

  /// Border color of the snack bar.
  Color getColor(BuildContext context) {
    final themeExtension = context.resolveThemeExtension<MyoroSnackBarThemeExtension>();

    return switch (this) {
          standard => themeExtension.standardBorderColor,
          attention => themeExtension.attentionBorderColor,
          success => themeExtension.successBorderColor,
          error => themeExtension.errorBorderColor,
        } ??
        MyoroColors.transparent;
  }

  /// Is [standard] getter.
  bool get isStandard {
    return this == standard;
  }

  /// Is [attention] getter.
  bool get isAttention {
    return this == attention;
  }

  /// Is [success] getter.
  bool get isSuccess {
    return this == success;
  }

  /// Is [error] getter.
  bool get isError {
    return this == error;
  }
}
